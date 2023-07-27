class ApplicationController < ActionController::API
  before_action :update_allowed_parameters, if: :devise_controller?
    rescue_from CanCan::AccessDenied do |exception|
      puts "user #{current_user}"
      message = exception.action.to_s == 'create' && exception.subject.to_s == 'session' ?
       I18n.t('devise.failure.invalid', authentication_keys: get_authentication_keys) :
       "You are not authorized."
    respond_to do |format|
      format.json { render json: message }
      format.html { redirect_to root_path, alert: message }
    end
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
