class TasksController < ApplicationController
  
  def index
    binding.pry
  end

  def create
    @project = Project.find(params[:project_id])
    @task = Task.new(name: params[:name], project_id: @project.id)
    if @task.save
      flash[:error] = "Task was saved"
      redirect_to project_path(@project)
    else
      flash[:error] = "Task was not saved"
      render '/projects/index'
    end
  end
end