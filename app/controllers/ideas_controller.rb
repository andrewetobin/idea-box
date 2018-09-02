class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def show
    @idea =  Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    @idea.save

    redirect_to idea_path(@idea)
  end

  private

    def idea_params
      params.require(:idea).permit(:title, :body)
    end


end
