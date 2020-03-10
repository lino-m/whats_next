class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @hide_goal_cta = true
    @achievements = Goal.where(completed: true).first(4)
  end
end
