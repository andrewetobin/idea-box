class UserSessionsController < ApplicationController
  # before_action :zero_users_or_authenticated, only: [:new, :create]
  before_action :require_login, except: [:new, :create]

  # def zero_users_or_authenticated
  #   unless User.count == 0 || current_user
  #     redirect_to root_path
  #     return false
  #   end
  # end


  def new
    require "pry"; binding.pry
  end

  def create
    if login(params[:email], params[:password])
      redirect_back_or_to(ideas_path, notice: 'Logged in successfully.')
    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Logged out!')
  end
end
