class EvaluatedController < ApplicationController

  def step_one
    @bosses = User.where(departament: current_user.departament)
    @step = current_user.step
  end

  def step_two
    @step = current_user.step
  end

  def step_three
    @step = current_user.step
  end

  def step_four
    @step = current_user.step
  end

end
