class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = Post.comment.create(params[:comment].permit(:comment))

		if @comment.save
			redirect_to post_path(@post)
		else
			render 'new'
		end
	end
end
