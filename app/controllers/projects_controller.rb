class ProjectsController < ApplicationController
  def index
    @projects = Project.order('priority desc')
  end
end
