# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :clear_forwarding_url, except: %i[edit update]
  before_action :logged_in_user, only: %i[index edit update]
  before_action :correct_user, only: %i[edit update]
  # before_action :admin_user, only:  %i[index] # TODO: reactivate line

  def index
    @users = User.limit(10)
  end

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

  def admin_user
    return if admin_user?

    flash[:danger] = t('flash.users.assert.admin.failure')
    redirect_to(root_path)
  end

  def logged_in_user
    return if logged_in?

    store_location
    flash[:danger] = t('flash.users.assert.login.failure')
    redirect_to(login_url)
  end

  def correct_user
    return if current_user?

    flash[:danger] = t('flash.users.assert.authorized.failure')
    redirect_to(root_url)
  end

  def current_user?
    current_user == User.find(params[:id])
  end
end
