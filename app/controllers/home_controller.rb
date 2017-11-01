class HomeController < ApplicationController

    def index
      @user = current_user.idRol
    end

    def evaluator
    end

    def evaluated
    end

    private

end
