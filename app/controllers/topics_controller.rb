class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end
  
  def show
    @topic = Topic.find(params[:id])
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
