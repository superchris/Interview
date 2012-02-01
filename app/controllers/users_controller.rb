class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  before_filter :load_user, :except => :index
  
  def load_user
    @user = User.find(params[:id])
  end
  
  def edit
  end
  
  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "User saved."
      redirect_to users_path
    else
      render :edit
    end
  end
end
