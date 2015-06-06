class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    
    devise_parameter_sanitizer.for(:sign_up) << :description
    devise_parameter_sanitizer.for(:account_update) << :description
    
    devise_parameter_sanitizer.for(:sign_up) << :admin
    devise_parameter_sanitizer.for(:account_update) << :admin

  end
end
