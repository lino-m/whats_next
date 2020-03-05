class MilestonesController < ApplicationController

# def index
# @milestones = Milestone.all
# end

# def show
#   @milestone = Milestone.find(params[:id])
# end

  def new
    @milestone = Milestone.new
  end


  private

  def find_milestone
    @milestone = Milestone.find(params[:id])
  end
end
