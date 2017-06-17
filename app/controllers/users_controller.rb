class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.email                 = params[:user][:email]
    @user.password              = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      # default behaviour of flash works on a redirect
      flash[:notice] = 'Account created!!!'
      redirect_to root_url
    else
      # flash.now works on the same request
      flash.now[:error] = 'Something went wrong, and it was your fault. Try again!'
      render :new
    end
  end
end
