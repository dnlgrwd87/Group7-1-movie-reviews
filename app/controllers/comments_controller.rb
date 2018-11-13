class CommentsController < ApplicationController
    def create
        @review = Reviews.find(params[:review_id])
        @comment = @review.comments.create(comment_params)
        redirect_to review_path(@review)

    private 
    def comment_params
        params.require(:comment).permit(:commenter, :body)

    end 
end
