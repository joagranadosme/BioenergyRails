class EvaluatedController < ApplicationController

  def step_one
    @bosses = User.where(departament: current_user.departament)
  end

  def step_two
  end

  def step_three
  end

  def step_four
  end

end
