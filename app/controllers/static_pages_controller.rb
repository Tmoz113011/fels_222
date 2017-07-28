class StaticPagesController < ApplicationController
  before_action :logged_in_user, except: [:new, :create, :show]
  def home
    if logged_in?
    	@activity  = current_user.activities.build
      @activities_item = current_user.activity.paginate page: params[:page]
    end
  end
end
