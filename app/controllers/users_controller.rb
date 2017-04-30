class UsersController < ApplicationController
  def index
    @all_users = User.all
  end

  def show
    @user = User.find_by(id: params['id'])
  end

  def new
    @user = User.new
  end

  def create
   user = User.create( user_strong_params() )
   redirect_to "/users/#{user.id}"
  end

  def edit
    @user = User.find_by(id: params["id"])
  end

  def update
    project = Project.find_by(id: params["id"])
    project.update( project_strong_params() )
    redirect_to "/projects/#{project.id}"
  end

  def destroy
    projecy = Project.find_by(id: params["id"])
    project.destroy
    redirect_to "/projects"
  end

  private
   def project_strong_params
     params.require(:project).permit(:title, :date, :image)
   end

end
