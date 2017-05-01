class ProjectsController < ApplicationController

  def index
    @all_projects = Project.all
    @project = Project.find_by(id: params["id"])
  end

  def show
    @project = Project.find_by(id: params["id"])
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.create( project_params() )
    redirect_to "/projects/#{project.id}"
  end

  def edit
    @project = Project.find_by(id: params["id"])
  end

  def update
    project = Project.find_by(id: params["id"])
    project.update( project_params() )
    redirect_to project_path(project)
  end

  def destroy
    project = Project.find_by(id: params["id"])
    project.destroy
    redirect_to projects_path()
  end

  private
    def project_params
      params.require(:project).permit(:title, :date, :image, :user_id)
    end
end
