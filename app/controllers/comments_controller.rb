class CommentsController < ApplicationController
    before_action :set_post, only: %i[ create edit update ]

    def create
        @comment = @post.comments.create(comment_params)
        redirect_to @post
    end

    def edit
        @comment = get_comment
    end

    def update
        @comment = get_comment
        @comment.update(comment_params)
        redirect_to @post
    end

    def destroy
        @comment = get_comment
        @comment.destroy
        redirect_to "/posts/#{params[:post_id]}"
    end

    private
        def get_comment
            Comment.find(params[:id])
        end

        def set_post
            @post = Post.find(params[:post_id])
        end

        def comment_params
            params.require(:comment).permit(:name, :content)
        end

end
