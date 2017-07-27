class SessionsController < ApplicationController
  def new
    redirect_to root_url if logged_in?
  end

  def create
    user = User.find_by emails: params[:session][:emails].downcase
    if user
      log_in user
      redirect_to root_path
    else
      flash.now[:danger] = t ".problem-login"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
