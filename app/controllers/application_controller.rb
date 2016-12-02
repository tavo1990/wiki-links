class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
# Call the configured params
before_action :configure_permitted_parameters, if: :devise_controller?

#Protect the database, allowing these fields to be updated (Strong parameters) 
protected
def configure_permitted_parameters
	 devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password_confirmation, :remember_me])  
	 devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :email, :password_confirmation, :remember_me]) 
	 devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password_confirmation, :remember_me]) 
  end
end
