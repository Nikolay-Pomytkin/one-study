class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name

    devise_parameter_sanitizer.for(:sign_up) << :description
    devise_parameter_sanitizer.for(:account_update) << :description

    devise_parameter_sanitizer.for(:sign_up) << :admin
    devise_parameter_sanitizer.for(:account_update) << :admin

    devise_parameter_sanitizer.for(:sign_up) << :avatar
    devise_parameter_sanitizer.for(:account_update) << :avatar

  end
end
