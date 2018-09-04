class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :destroy, :edit, :update]
  before_action :require_login, except: [:index, :show]

  def index
    @ideas = Idea.all
  end

  def show
  end

  def new
    @idea = Idea.new
    # @categories = Category.all
  end

  def create
    @idea = Idea.create(idea_params)
    # require "pry"; binding.pry
    category = Category.find(params[:category_id])
    IdeaCategory.create(category: category, idea: @idea)

    redirect_to idea_path(@idea)
  end

  def destroy
    @idea.destroy
    redirect_to ideas_path
  end

  def edit
  end

  def update
    @idea.update(idea_params)

    flash.notice = "Idea '#{@idea.title}' Updated!"
    redirect_to idea_path(@idea)
  end

  private

    def idea_params
      params.require(:idea).permit(:title, :body, :image, :id)
    end

    def set_idea
      @idea = Idea.find(params[:id])
    end


end
