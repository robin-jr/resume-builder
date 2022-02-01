class ExperiencesController < ApplicationController
  def new
    current_user.profile.experiences.create
    redirect_to edit_url
  end
end
