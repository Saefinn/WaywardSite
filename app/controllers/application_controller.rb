class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  
#This is for Devise.
#It will allow us to add permitted parameters to the default ones. So if we need to add additional
#Criteria to the database, we can add it here. This is specific to 'sign_up' but we can go to
#'account_update' too.
#Visit: http://mczuchnowski.github.io/tutorials/2015/03/15/devise-and-strong-parameters/
#For more information
before_action :configure_permitted_parameters, if: :devise_controller?

protected

  #This is to provide permissions for user account creation and updates
  #This is require for this data to post, because of security.
def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << [:first_name, :last_name, :profile_name, :description, :character_names]
  devise_parameter_sanitizer.for(:account_update) << [:first_name, :last_name, :description, :character_names]
  
end
  
end
