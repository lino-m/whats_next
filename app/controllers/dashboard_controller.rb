class DashboardController < ApplicationController
  def goals
    @goals = current_user.goals.where(completed: false).order(created_at: :desc)
    @achievements = current_user.goals.where(completed: true)
    # @milestones = @goals.milestones
  end

  def achievements
    @user = current_user
    @achievements = @user.goals.where(completed: true)
    #@milestones = @achievements.milestones
  end
end
