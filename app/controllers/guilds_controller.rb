class GuildsController < ApplicationController
  def index
    @guilds = Guild.paginate page: params[:page], order: 'name', per_page: 20
  end

  def show
    @guild = Guild.find(params[:id])
  end

  def new
    @guild = Guild.new
  end

  def edit
    @guild = Guild.find(params[:id])
    Resque.enqueue(GuildRefresher, @guild.name, @guild.realm_id)
    redirect_to guilds_path, :notice => "Guild refresh submitted."
  end

  def create
    Resque.enqueue(GuildRefresher, params[:guild][:name], params[:guild][:realm_id])
    redirect_to guilds_path, :notice => "Guild refresh submitted."
  end
  
  def destroy
    @guild = Guild.find(params[:id])
    @guild.destroy

    redirect_to guilds_url
  end
end
