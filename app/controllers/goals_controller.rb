class GoalsController < ApplicationController
before_action :find_goal, only: [:show]

  def index

  end

  def achievements
    if params[:search].present?# && params[:search][:query].match(/^\w+$/)
      user_query = params[:search][:query]
      @achievements = Goal.where(completed: true)
      @achievements_pg= PgSearch.multisearch(user_query)
      @achievements = @achievements_pg.map(&:searchable)

    else
      @achievements = Goal.where(completed: true)
    end
  end

  def show

  end

  def achievement
    @achievement = Goal.find(params[:id])
    @milestones = Milestone.where(goal_id: @achievement.id)
  end

  def searched
    # if params[:search].present? && params[:search][:query].match(/^\d+$/)
    #   user_input = params[:search][:query]
    #   @movies = Movie.where(year: user_input)
    # elsif params[:search].present?
    #   user_input = params[:search][:query]
    #   # @movies = Movie.where("title ILIKE ? OR syllabus ILIKE ? ", "%#{user_input}%", "%#{user_input}%" )
    #   # sql_query = "
    #   #   movies.title @@ :query
    #   #   OR movies.syllabus @@ :query
    #   #   OR directors.full_name @@ :query
    #   # "
    #   # @movies = Movie.joins(:director).where(sql_query, query: "%#{user_input}%")
    #   # @movies = Movie.search_for_bananas(user_input)
    #   @movies_pg_format = PgSearch.multisearch(user_input)
    #   # @movies = @movies_pg_format.map { |movie| movie.searchable }
    #   @movies = @movies_pg_format.map(&:searchable)
    # else
    #   @movies = Movie.all
    # end
  end

  private

  def find_goal
    @goal = Goal.find(params[:id])
  end
end
