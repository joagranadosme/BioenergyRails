class EvaluatorController < ApplicationController

  before_action :set_user, only: []

  def index
  end

  def accept
    current_user.get_employees.each do |e|
      e.update(step: 2)
    end
    redirect_to evaluator_path, notice: 'Cambios guardados correctamente'
  end

  def step_one
    @employees = current_user.get_employees
  end

  def step_two
  end

  def step_three
  end

  def step_four
  end

  private
    def set_user
      @user = User.find(params[:id])
    end


end
