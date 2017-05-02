class CommentsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.new(comment_params)
    @comment.name = @current_user.name
    @comment.user = @current_user
    @comment.save

    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @comment = @project.comments.find(params[:id])
    @comment.destroy
    redirect_to project_path(@project)
  end

  private
    def comment_params
      params.require(:comment).permit(:name, :post)
    end
end
