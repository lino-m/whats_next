class GoalsController < ApplicationController
before_action :find_goal, only: [:show]

  def index
    @achievements = Goal.where(completed: true)
  end

  def new
    @goal = Goal.new
    # @goal.build_milestones
  end

  def create
  end

  def edit
    @goal = find_goal
    @milestones = Milestone.where(goal_id: @goal.id)
  end

  def update
    @goal = Goal.new(goal_params)
    @goal.user = current_user
    @activity = Activity.find(params[:goal][:activity][:name])
    @goal.activity_id = @activity.id
    if @goal.save!
      redirect_to goals_path
    else
      render :edit
    end
  end

  def achievements
   @achievements = Goal.where(completed: true)

  end

  def show

  end

  def achievement
    @achievement = Goal.find(params[:id])
    @milestones = Milestone.where(goal_id: @achievement.id)
  end

  def searched
   if params[:search].present?
      user_query = params[:search][:query]
      @goals_and_activities_pg = PgSearch.multisearch(user_query)
      if @goals_and_activities_pg.empty?
        @text = "Sorry, no matches. Look at what others did"
        @achievements = Goal.where(completed: true)
        @goals = @achievements.select { |a| a.class.name == 'Goal' }
      else
        @text = ''
        @goals_and_activities = @goals_and_activities_pg.map(&:searchable)
        @goals = @goals_and_activities.select { |goa| goa.class.name == 'Goal' }.select { |g| g.completed }
        @activities = @goals_and_activities.select { |goa| goa.class.name == 'Activity'}
      end
    end
  end


  private

  def find_goal
    @goal = Goal.find(params[:id])
  end
end
