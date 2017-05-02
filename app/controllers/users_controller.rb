class UsersController < ApplicationController

  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]

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
    @user = User.new( user_params )
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path( @user )
    else
      render :new # Show them the Sign Up form again
    end
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

      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end

      def check_if_logged_out
        if @current_user
          flash[:error] = "You are already logged in"
          redirect_to "/users"
        end
      end

      def check_if_logged_in
        unless @current_user
          flash[:error] = "You need to be logged in for that"
          redirect_to "/login"
        end
  end

end
