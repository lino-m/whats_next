class GoalsController < ApplicationController
before_action :find_goal, only: [:show]

  def index
    @achievements = Goal.all
  end

  def new
    @goal = Goal.new
    @goal.milestones.build
    @activities = Activity.all
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user = current_user
    @activity = Activity.find(params[:goal][:activity][:name])
    @goal.activity_id = @activity.id
    if @goal.save!
      redirect_to goals_path
    else
      render :new
    end
  end


  def achievements
    if params[:search].present?
      user_query = params[:search][:query]
      # @achievements = Goal.where(completed: true)
      @achievements_pg = PgSearch.multisearch(user_query)
      @query_achievements = @achievements_pg.where(completed: true)

    else

      # @achievements = Goal.where(completed: true)
    end


  end

  def show

  end

  def achievement
    @achievement = Goal.find(params[:id])
    @milestones = Milestone.where(goal_id: @achievement.id)
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

  def goal_params
    params.require(:goal).permit(:name, :description, :photo , milestones_attributes: [:name, :description, :done,  :price_cents]) #Milestone.attribute_names.map(:to_sym).push(:_destroy))
  end

end











