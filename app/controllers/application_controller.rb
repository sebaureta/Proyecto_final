class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do
    respond_to do |format|
      format.html { redirect_to root_path, alert: 'Lo siento!, No puedes realizar esta acción! :( '}
    end
  end

  def after_sign_in_path_for(resource)
    if resource.admin?
      admins_path
    else
      products_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar, :image, :admin])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar, :image, :admin])
  end
end
