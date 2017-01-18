class LandingController < Devise::SessionsController
  before_action :configure_permitted_parameters

  def new
    super
  end

  def create
    super
  end

  def destroy
    super
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |u|
      u.permit(:login, :password, :remember_me)
    end
  end

end