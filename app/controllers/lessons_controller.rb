class LessonsController < ApplicationController
  before_action :logged_in_user, except: [:new, :create, :show]

  def index
    @lessons = current_user.lessons
  end

  def show; end

  def find_lesson
    @lesson = current_user.lessons.includes(results: [:answer, word: :answers]).
      find_by_id params[:id]
  end
end
