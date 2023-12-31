class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # include Pundit::Authorization

  include Pundit::Authorization
  # ccd0eb6f233c4e9708664a7a4bda60f47bf95d2f

  # Pundit: allow-list approach
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  # flash[:alert] = "You are not authorized to perform this action."
  # redirect_to(root_path)
  # end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :due_date, :avatar_cl])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :due_date, :avatar_cl])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
