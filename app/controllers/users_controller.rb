class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    @user.state = params[:state]
    if @user.save
      flash[:notice] = "You signed up successfully, please"
      flash[:color] = "valid"
        redirect_to "/users/new"
    else
      render "new"
    end

  end

  def destroy
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  private 
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :location, :state, :password, :password_confirmation)

  end

end
