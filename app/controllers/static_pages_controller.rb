class StaticPagesController < ApplicationController
  before_action :logged_in_user, except: [:new, :create, :show]
  def home; end
end
