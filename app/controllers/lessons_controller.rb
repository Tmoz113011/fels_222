class LessonsController < ApplicationController
  before_action :logged_in_user, except: [:new, :create, :show]
end
