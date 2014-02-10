class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def index
  	@users = User.all
  end

  def create
  	User.create(params[:user].permit(:username, :password))
  	redirect_to users_path
  end

end
