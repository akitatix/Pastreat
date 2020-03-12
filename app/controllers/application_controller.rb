class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :redirect_voting


  protected

  def redirect_voting
    return unless current_user && current_user.boulangerie

    redirect_to new_boulangery_rating_path(current_user.boulangerie)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :location])
  end

  def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
  end

end
