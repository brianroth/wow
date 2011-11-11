class RealmsController < ApplicationController
  def index
    @realms = Realm.paginate page: params[:page], order: 'name', per_page: 20
  end

  def show
    @realm = Realm.find(params[:id])
  end

  def refresh
    Resque.enqueue(RealmsRefresher)
    redirect_to realms_path, :notice => "Realm refresh submitted."
  end

end
