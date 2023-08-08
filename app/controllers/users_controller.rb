class UsersController < ApplicationController
  before_action :set_profile

  def show
    authorize @profile
  end

  def calendar
    authorize @profile
  end

  private

  def set_profile
     @profile = current_user
  end
end