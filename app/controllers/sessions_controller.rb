class SessionsController < ApplicationController

include SessionHelper

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to robots_path
    else
      redirect_to login_path, :alert => "Warning: You are in violation of Penal Code 1.13, Section 9. I am authorized to use physical force if login attempt fails."
    end
  end

  def destroy
    session_logout
    redirect_to root_path
  end

end
