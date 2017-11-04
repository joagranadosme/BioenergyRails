class PeriodsController < ApplicationController

  #before_action :set_period, only: []

  def new
    @period = Period.new
  end

  def create
    @period = Period.new(period_params)
    if @period.save?
    end
  end

  private
    def set_period
      @period = Period.find(params[:id])
    end

    def period_params
      params.require(:period).permit(:number, :expiration, :proposed, :reached,
        :compromise, :commentary, :goal_id)

    end

end
