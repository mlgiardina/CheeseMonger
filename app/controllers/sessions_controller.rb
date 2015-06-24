class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.user_id
      render json: { message: 'logged in!' }
    else
      render json: { message: 'user does not exist' }, status: 404
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to logout_path
  end
end
