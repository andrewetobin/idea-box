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
    @idea = Idea.new
    @idea.title = params[:idea][:title]
    @idea.body = params[:idea][:body]
    @idea.save
    redirect_to idea_path(@idea)
  end


end
