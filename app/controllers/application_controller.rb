class ApplicationController < ActionController::API
  before_action :update_allowed_parameters, if: :devise_controller?
  rescue_from CanCan::AccessDenied do |_exception|
    puts current_user.role
    message = 'You are not authorized.'
    render json: message
  end

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :role, :email, :password, :password_confirmation)
    end
  end
end
