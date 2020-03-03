class GoalsController < ApplicationController
  def index

  end

  def achievement_index
    @achievements = Goal.where(completed: true)
  end

  def show
  end
end
