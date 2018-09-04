class CategoriesController < ApplicationController
  before_action :require_login, only: [:destroy]
  
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
end
