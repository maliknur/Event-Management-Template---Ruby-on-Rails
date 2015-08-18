class CommentsController < ApplicationController
  def new
  	@comment = Comment.new
  end

  def index
  	@comments = Comment.all
  end

  def create
  	@comment = Comment.new(comment_params)
  	if @comment.save
  		redirect_to "/events/#{comment_params[:event_id]}"
  	else
  		flash[:notice] = "Comment can't be empty"
  		flash[:color] = "warning"
  	end

  end

  private 
  def comment_params
  	params.require(:comment).permit(:comment, :user_id, :event_id)
  end
end
