class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  
  def show
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
