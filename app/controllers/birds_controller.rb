class BirdsController < ApplicationController

    #get all birds=> route GET/birds
    def index
        birds = Bird.all
        if birds
            render json: birds, status: :ok
        else
            render json: {error:"No birds found"}, status: :not_found
        end
    end

    #get a single bird route=> GET/birds/:id
    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else
            render json: {error:"bird not found"}, status: :not_found
        end
    end
end
