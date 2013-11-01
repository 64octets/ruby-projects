class ProjectsController < ApplicationController
  def index
    #@projects = Project.order('priority desc')
    #logger.debug("Login: #{user_signed_in?}")
  end

  def show
    @project = Project.find(params[:id])

  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new()
    project.update_attributes!(project_params)
    logger.debug(project.inspect)
    if project.save
      redirect_to root_path
    else
      render new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :small_description, :description, :started, :finished, :url, :email, :progress, :active, :priority, :metro_size)
  end
end
