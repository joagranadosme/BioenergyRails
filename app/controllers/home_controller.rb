class HomeController < ApplicationController

    def index
      @role = current_user.role
    end

    def evaluator
      @step = current_user.step
    end

    def evaluated
      @step = current_user.step
    end

end
