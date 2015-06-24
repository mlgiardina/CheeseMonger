class SessionsController < ApplicationController
  def new
  end

  def create
    @cheeses = Cheese.all
    @user = User.find_by_username(params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render 'cheeses/index'
    else
      render json: { message: 'user does not exist' }, status: 404
    end
  end

  def destroy
    @cheeses = Cheese.all
    session[:user_id] = nil
    render 'cheeses/index'
  end
end
