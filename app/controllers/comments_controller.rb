class CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: @comments
    end

    def create
        @comment = current_user.comments.build(comment_params)
        if comment.save
            render json: @comment, status: :created, location: @comment
        else 
            render json: @comment.errors, status: :unprocessable_entity
        end
    end

    def update
        if @comment.update(comment_params)
            render json: @comment
        else
            ender json: @comment.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @comment.destroy
    end

    private
    
    def comment_params
        params.require(:comment).permit(:title, :comment, :user_id, :headshot_id)
    end

end
