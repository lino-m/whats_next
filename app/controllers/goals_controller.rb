class GoalsController < ApplicationController
before_action :find_goal, only: [:show]

  def index
    @achievements = Goal.where(completed: true)
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

   @activities = Activity.geocoded #returns flats with coordinates

    @markers = @flats.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude
      }
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
  # endup

  def duplicate
  end

  def searched
    # @activities = Activity.geocoded #returns flats with coordinates

    # @markers = @flats.map do |activity|
    #   {
    #     lat: activity.latitude,
    #     lng: activity.longitude
    #   }

   if params[:search].present?
      user_query = params[:search][:query]
      @goals_and_activities_pg = PgSearch.multisearch(user_query)
      if @goals_and_activities_pg.empty?
        @text = "Sorry, no matches. Look at what others did"
        @achievements = Goal.where(completed: true)
        @achievements = @achievements.select { |a| a.class.name == 'Goal' }
      else
        @text = ''
        @goals_and_activities = @goals_and_activities_pg.map(&:searchable)
        # @achievements = @goals_and_activities
        @achievements = @goals_and_activities.select { |goa| goa.class.name == 'Goal' }.select { |g| g.completed }
        @activities = @goals_and_activities.select { |goa| goa.class.name == 'Activity'}
        @activities.each do |a|
        @achievements = Goal.joins(:activity).where(activity_id: a.id)
        end

      end


    end

    # Flat.near('Tour Eiffel', 10)      # venues within 10 km of Tour Eiffel
    # Flat.near([40.71, 100.23], 20)
  end


  private

  def find_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:name, :description, :photo , milestones_attributes: [:name, :description, :done,  :price_cents]) #Milestone.attribute_names.map(:to_sym).push(:_destroy))
  end
end
