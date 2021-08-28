class BirdsController < ApplicationController
    def index
        birds = Bird.all
        render json: birds
    end

    def show
        id = params[:id]
        bird = Bird.find_by(id: id)
        if bird
            render json: bird
        else
            render json: {error: "Bird not found"}, status: :not_found
        end
    end
end
