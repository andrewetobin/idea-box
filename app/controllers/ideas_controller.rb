class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :destroy, :edit, :update]

  def index
    @ideas = Idea.all
  end

  def show
  end

  def new
    @idea = Idea.new
    @categories = Category.all
  end

  def create
    @idea = Idea.new(idea_params)
    @idea.save

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
      params.require(:idea).permit(:title, :body, :tag_list, :image)
    end

    def set_idea
      @idea = Idea.find(params[:id])
    end


end
