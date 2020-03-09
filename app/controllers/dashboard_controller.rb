class DashboardController < ApplicationController
  def goals
    @goals = current_user.goals.where(completed: false)
    # @milestones = @goals.milestones
  end

  def achievements
    @user = current_user
    @goals = @user.goals.where(completed: true)
    @milestones = @goals.milestones
  end
end
