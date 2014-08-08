class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
    @new_project = Project.new
    @task = Task.new
  end

  def show
    @project = Project.find(params[:id])
    respond_to do |format|
      format.html { redirect_to :back, error: "processed as html"}
      format.js
    end
  end

  def create
    @project = Project.new(project_params)
    
    if @project.save
      flash[:notice] = "your project has been saved"
    else
      flash[:error] = "sorry an error has occured"
    end
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end

end