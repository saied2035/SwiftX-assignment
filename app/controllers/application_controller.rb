class ApplicationController < ActionController::API
  before_action :update_allowed_parameters, if: :devise_controller?
    rescue_from CanCan::AccessDenied do |exception|
      message = "You are not authorized."
      render json: message
    end
  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :role, :email, :password, :password_confirmation)
    end
  end

  def get_authentication_keys
    auth_keys = User.authentication_keys
    keys = (auth_keys.respond_to?(:keys) ? auth_keys.keys : auth_keys).map { |key| User.human_attribute_name(key) }
    authentication_keys = keys.join(I18n.translate(:"support.array.words_connector"))
    authentication_keys
  end  
end
