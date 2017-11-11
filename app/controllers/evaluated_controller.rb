class EvaluatedController < ApplicationController

  def step_one
    @user = current_user
    @step = current_user.step
    @bosses = User.where(departament: current_user.departament)
  end

  def step_two
    @user = current_user
    @step = current_user.step
    @goals = Goal.get_goals_from_user(current_user)
  end

  def step_three
    @user = current_user
    @step = current_user.step
  end

  def step_four
    @user = current_user
    @step = current_user.step
  end

end
