class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :edit, :destroy]
  def index
    @users = User.all
    @asdf = 'My what a nice app'
  end

  def show
  end
  
  def new
    @user = User.new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end
  
  def destroy
    @user.destroy
    redirect_to users_path
  end
  
  private
  def set_user
    @user = User.find(params["id"])
  end
  
  def user_params
      params.require(:user).permit(:first_name, :last_name)
    end
end
