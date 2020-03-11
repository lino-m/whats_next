class MilestonesController < ApplicationController
before_action :find_milestone, only: [:destroy]
# def index
# @milestones = Milestone.all
# end

# def show
#   @milestone = Milestone.find(params[:id])
# end

  def new
    @milestone = Milestone.new
  end

  def update
    @milestone = Milestone.find(params[:id])
    @milestone.done ? @milestone.done = false : @milestone.done = true
    @milestone.save
    redirect_to dashboard_goals_path
  end

  def destroy
    @milestone.destroy
    respond_to do |format|
      format.html { render 'dashboard/goal_milestones' }
      format.js  { render :layout => false }
    end
  end


  private

  def find_milestone
    @milestone = Milestone.find(params[:id])
  end
end
