class HomeController < ApplicationController

    def index
      @user = current_user
    end

    def evaluator
    end

    def evaluated
    end

    private

end
