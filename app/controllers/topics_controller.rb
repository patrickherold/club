class TopicsController < ApplicationController
  def index
    @topics = Topic.order(:created_at).page(params[:page])
  end
  
  def show
    @topic = Topic.find(params[:id])
    @comments = Comment.order(:created_at).page(params[:page])
  end
  
  def create
    Topic.create(topic_params)
    redirect_to :back
  end
  
  private
  def topic_params
    params.require(:topic).permit(:title, :category_id)
  end

end
