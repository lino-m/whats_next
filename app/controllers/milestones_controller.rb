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

  def destroy
    @milestone.destroy
  end


  private

  def find_milestone
    @milestone = Milestone.find(params[:id])
  end
end
