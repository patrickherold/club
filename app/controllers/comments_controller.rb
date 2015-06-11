class CommentsController < ApplicationController
  def index
    @comments = Comment.order(:created_at).page(params[:page])
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
  
  
  def create
    Comment.create(comment_params)
    redirect_to :back
  end
  
  private
  def comment_params
    params.require(:comment).permit(:title, :topic_id)
  end
end
