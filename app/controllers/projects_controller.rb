class ProjectsController < ApplicationController

  def index
    @all_projects = Project.all
    # @project = Project.find_by(id: params["id"])
  end

  def show
    @project = Project.find_by(id: params["id"])
    @comments = Comment.where( project_id: @project.id )
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new( project_params() )
    project.user = @current_user
    project.save
    
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

    def authorise
      unless @current_user
      flash[:error] = "You need to be logged in for that"
      redirect_to "/login"
    end
  end

end
