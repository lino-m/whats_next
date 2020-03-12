class GoalsController < ApplicationController
before_action :find_goal, only: [:show, :destroy]

  def index
    @goals = Goal.where(completed: false)
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
    @goal.completed = false # test line Lino
    if @goal.save!
      redirect_to dashboard_goals_path
    else
      render :new
    end
  end

  def edit
    @goal = find_goal
    @milestones = @goal.milestones
    @milestones.each do |milestone|
      milestone.done = false
    end
    # @goal.milestones.build
    @activities = Activity.all
  end

  def update
    @goal = Goal.new(goal_params)
    @goal.user = current_user
    @activity = Activity.find(params[:goal][:activity][:name])
    @goal.activity_id = @activity.id
    @goal.completed = false
    if @goal.save!
      redirect_to dashboard_goals_path
    else
      render :edit
    end
  end

  def achievements
    @achievements = Goal.where(completed: true)
    geocode

  end

  def goal_refrence
    @goal = find_goal
    @new_goal = Goal.new(title: @goal, motivation: @motivation)
    @milestones = @goal.milestones
  end

  def show

  end

  def achievement
    @achievement = Goal.find(params[:id])
    @milestones = @achievement.milestones
    unless @achievement.completed
      raise ActiveRecord::RecordNotFound.new("Goal not completed")
    end
  end

  def duplicate
  end


  def searched
    if params[:search].present?
      user_query = params[:search][:query]
    elsif params[:query].present?
      user_query = params[:query]
    end
    sql_query = "
      goals.title @@ :query
      OR goals.category @@ :query
      OR goals.motivati @@ :query
      OR activities.location @@ :query
      OR activities.name @@ :query
    "
    @achieve = Goal.joins(:activities).where(sql_query, query: "%#{user_query}%")
    @achieve = Goal.where(completed: true).search_query(user_query)

    if @achieve.empty?
      @text = "Sorry, no matches. Look at what others did"
      @achievements = Goal.where(completed: true)
      geocode
    else
      @text = ''
      @achievements = Goal.joins(:activities).where(sql_query, query: "%#{user_query}%")
      @achievements = Goal.where(completed: true).search_query(user_query)
      geocode
    end
  end

  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { render 'dashboard/goals' }
      format.js  { render :layout => false }
    end
  end

  private

  def find_goal
    @goal = Goal.find(params[:id])
  end

  def geocode
    # @ach = @achievements.select{ |ach| ach.activity.location }
    @markers = @achievements.map do |ach|

      {
        # x = Geocoder.search(@achievements[0].activity.location)[0].data['lat']
        lat: Geocoder.search(ach.activity.location)[0].data['lat'],
        lng: Geocoder.search(ach.activity.location)[0].data['lon'],
        infoWindow: render_to_string(partial: "shared/info_window", locals: { goal: ach }),
        image_url: helpers.asset_url('whatsnext.svg')
      }
    end
  end

  def goal_params
    params.require(:goal).permit(:title, :motivation, :activity_id, :completed, :photo , milestones_attributes: [:name, :description, :done,  :price_cents], activity_attributes: [:name, :location, :category]) #Milestone.attribute_names.map(:to_sym).push(:_destroy))
  end
end

