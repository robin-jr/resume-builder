class ExperiencesController < ApplicationController
  def new
    current_user.profile.experiences.create
    flash[:success] = "Experience added."
    redirect_to edit_url
  end
end
