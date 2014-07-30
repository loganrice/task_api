class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update]

  def home
    @projects = Project.all
  end
  
  def index
    @projects = Project.all
  end

  def show
    @tasks = @project.tasks
  end

  private

  def set_project
    @project = Post.find(params[:id])
  end
end