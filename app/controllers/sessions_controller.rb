class SessionsController < ApplicationController
  before_action :find_user, only: :create

  def new
    redirect_to root_url if logged_in?
  end

  def create
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url
    else
      flash.now[:danger] = t ".problem-login"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end

  private

  def find_user
    @user = User.find_by emails: params[:session][:emails].downcase
    return if user
    flash.now[:danger] = t ".error-login"
    render :new
  end
end
