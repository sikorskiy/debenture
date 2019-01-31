class UsersController < ApplicationController

  def login

  end

  def check
    user = User.find_by_username(params[:user][:username])
    if user && params[:user][:password] == user.password
      session_login(user.id)
      redirect_to new_debenture_path
    else
      redirect_to root_path
    end
  end

  def log_out
    log_out_user
    current_user
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(username: params[:user][:username],password: params[:user][:password],email: params[:user][:email])
    @user.save
    redirect_to root_path
  end

  def info

  end
end