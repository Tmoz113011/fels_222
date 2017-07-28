class ActivitiesController < ApplicationController
  before_action :logged_in_user, except: [:new, :create, :show]
  before_action :find_activity

  def show; end

  private

  def find_activity
    @activity = current_user.activity.find_by id: params[:id]
  end
end
