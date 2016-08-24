class SessionsController < ApplicationController
	def create
  	@user = User.where(username: params[:username]).first
  		if @user && @user.password == (params[:password])
  			session[:user_id] = @user.id
  			redirect_to user_path(@user)
  			#successful login
  		else
  			flash[:alert] = "Invalid email/password combination"
  			redirect_to welcome_index_path
  		end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to welcome_index_path
    flash[:alert] = "Log Out Successful"
  end
end
