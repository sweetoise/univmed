class RegisterController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  layout 'userpanel_fixednav', only: [:edit, :update]
  def new
    super
  end

  def edit
    super
  end

  def create
    super
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:username, :email, :password, :password_confirmation)#:terms)
    end

    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:username, :email, :password, :password_confirmation, :current_password)
    end
  end

  protected

  def after_sign_up_path_for(resource)
  # '/profile_setups'
  end

  def after_inactive_sign_up_path_for(resource)
  # '/signup/account_activation'
  end
end
