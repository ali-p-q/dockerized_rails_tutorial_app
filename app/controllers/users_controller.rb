# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[edit update]
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:success] =
        t('flash.users.create.welcome').concat(
          ", #{@user.name}!"
        )
      redirect_to(@user)
    else
      render('new')
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = t('flash.users.update.success')
      redirect_to(@user)
    else
      render('edit')
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def logged_in_user
    return if logged_in?

    flash[:danger] = t('flash.users.assert.login.failure')
    redirect_to(login_url)
  end
end
