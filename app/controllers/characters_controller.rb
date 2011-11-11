class CharactersController < ApplicationController
  def index
    @characters = Character.paginate page: params[:page], order: 'name', per_page: 20
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def refresh
    @character = Character.find(params[:id])
    Resque.enqueue(CharacterRefresher, @character.name, @character.realm_id)
  end

  def create
    Resque.enqueue(CharacterRefresher, params[:character][:name], params[:character][:realm_id])
    redirect_to characters_path, :notice => "Character refresh submitted."
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    redirect_to characters_url
  end
end
