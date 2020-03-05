class GoalsController < ApplicationController
before_action :find_goal, only: [:goal]

  def index

  end

  def achievements

    if params[:search].present?
      user_query = params[:search][:query]
      @achievements = Goal.where(completed: true)
      @achievements_pg = PgSearch.multisearch(user_query)
      @achievements = @achievements_pg.map(&:searchable)
    else
      @achievements = Goal.where(completed: true)
    end
  end

  def show

  end

  def achievement
    @achievement = Goal.find(params[:id])
  end

  # def notes to self
    # if params[:search].present? && params[:search][:query].match(/^\d+$/)
    #   user_input = params[:search][:query]
    #   @movies = Movie.where(year: user_input)
  # end

  private

  def find_goal
    @goal = Goal.find(params[:id])
  end

end
