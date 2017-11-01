class HomeController < ApplicationController

    def index
      @user = current_user
    end

    def evaluator
      @employees = current_user.getBosses
    end

    def evaluated
      @bosses = current_user.getBosses
    end

end
