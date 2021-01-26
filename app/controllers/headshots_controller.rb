class HeadshotsController < ApplicationController
    def index
        @headshots = Headshot.all
        render json: @headshots
    end

    def show
        render json: @headshot
    end

    def create
        @headshot = current_user.headshot.build(headshot_params)
        if @headshot.save
            render json: @headshot, status: :created, location: @photo
        else
            render json: @headshot.errors, status: :unprocessable_entity
        end
    end

    def update
        if @headshot.update(headshot_params)
            render json: @headshot
        else
            render json: @headshot.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @headshot.destroy
    end

    private
    def set_headshot
        @headshot = Headshot.find(params[:id])
    end

    def headshot_params
        params.require(:headshot).permit(:img_src, :caption)
    end
end
