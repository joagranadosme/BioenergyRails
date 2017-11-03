class GoalsController < ApplicationController

  #before_action :set_goal, only: []

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
    else
    end
  end

  private
    def set_goal
      @goal = Goal.find(params[:id])
    end

    def goal_params
      params.require(:goal).permit(:perspective, :description, :generalIndicator, :specificIndicator, :formula, :weight, :type, :measure)
    end

end
