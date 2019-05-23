class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if resource.admin?
      return admins_index_url
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar, :image, :admin])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar, :image, :admin])
  end
end
