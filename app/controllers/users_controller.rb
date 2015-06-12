class UsersController < ApplicationController
  def index
    @users = User.order(:created_at).page(params[:page])
  end
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
  end
end
