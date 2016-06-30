class UsersController < ApplicationController
  def index
  	@users = User.all
  end
  def show
  	@users = User.find(params[:id])
  end
  def edit
    @user = current_user
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user)
  end
  def create
    puts params.inspect
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end
  def destroy
    @user = User.find(params[:id]).destroy
    session.clear
    redirect_to welcome_index_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
