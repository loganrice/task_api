class TasksController < ApplicationController
  
  def index
    binding.pry
    @project = Project.find(params[:project_id])
    @tasks = @project.tasks
  end

  def create
  end
end