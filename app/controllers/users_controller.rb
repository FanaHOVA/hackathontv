class UsersController < ApplicationController

  def index
    @users = User.all.where(nation_id: current_user.nation_id)
  end

  def show
    @user = User.find(params[:id])
  end
end
