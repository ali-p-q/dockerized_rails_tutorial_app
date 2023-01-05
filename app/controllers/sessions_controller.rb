# frozen_string_literal: true

# SessionContoller
class SessionsController < ApplicationController
  before_action :clear_forwarding_url, except: %i[create]
  def new; end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user&.authenticate(params[:session][:password])
      log_in(@user)
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      redirect_back_or(@user)
    else
      flash.now[:danger] = t('flash.session.create.failure')
      render('new')
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to(root_url)
  end
end
