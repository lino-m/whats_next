class GoalsController < ApplicationController
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

end
