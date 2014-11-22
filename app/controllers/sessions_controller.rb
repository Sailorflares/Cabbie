class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path #notice: "Hello, #{@user.name}!"
    else
      flash.now.notice = "Invalid email or password!"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "You have been logged out."
  end

end
