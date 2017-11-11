class GoalsController < ApplicationController

  #before_action :set_goal, only: []

  def new
    @goal = Goal.new
    @goal.periods.build
  end

  def create
    @goal = Goal.new(goal_params)    
    if @goal.save
      redirect_to evaluated_step_two_path
    else
      render "new"
    end
  end

  private
    def set_goal
      @goal = Goal.find(params[:id])
    end

    def goal_params
      params.require(:goal).permit(:perspective, :description, :generalIndicator,
         :specificIndicator, :formula, :weight, :typeGoal, :measure, :user_id,
         periods_attributes: [:periods, :attributes])

         #[:hobbies, :attributes]
    end

end
