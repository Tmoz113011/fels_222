class ActivitiesController < ApplicationController
  before_action :logged_in_user, except: [:new, :create, :show]
  before_action :find_activity

  def index
    @activities = current_user.activities
  end

  def show; end

  def find_activity
    @activity = Activity.find_by id: params[:id]
  end
end
