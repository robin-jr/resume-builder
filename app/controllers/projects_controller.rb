class ProjectsController < ApplicationController
  def new
    current_experience = Experience.find(params[:experience_id])
    current_experience.projects.create
    redirect_to edit_url
  end
end
