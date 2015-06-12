class CategoriesController < ApplicationController
  def index
    @categories = Category.order(:created_at).page(params[:page])
  end
  
  def show
    @category = Category.find(params[:id])
    @topics = Topic.order(:created_at).page(params[:page])
  end
  
  def edit
    @category = Category.find(params[:id])
    @topics = Topic.order(:created_at).page(params[:page])
  end
  
  def update
    @category = Category.find(params[:id])
  end
  
  def create
    Category.create(title_params)
    redirect_to :back
  end
  
  private
  def title_params
    params.require(:category).permit(:title)
  end
end
