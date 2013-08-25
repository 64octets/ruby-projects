class ProjectsController < ApplicationController
  def index
    @projects = Project.order('priority desc')
    logger.debug("Login: #{user_signed_in?}")
  end

  def new

  end
end
