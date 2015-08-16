class SessionsController < ApplicationController
  def new
    session.delete(:user_id)
  end

  def create
  	@user = User.find_by(email: params[:session][:email].downcase)

  	if @user && @user.authenticate(params[:session][:password])
  		session[:user_id] = @user.id
      session[:user] = @user.first_name + ' ' + @user.last_name
  		redirect_to '/events'
  	else
	  	flash[:danger] = "Invalid credentials"
	  	render 'new'
  	end
  end

  def destroy
    session.delete(:user_id)
    session.delete(:user)
    redirect_to "/sessions/new"
  end
end
