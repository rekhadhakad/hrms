class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, 
      :image,
      :first_name,
      :last_name,
      :designation,
      :contact_no, 
      :password, 
      :password_confirmation, 
      :current_password, 
      :remember_me ) }
      # devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(  :email, :name, :password, :password_confirmation, :remember_me , :profile_photo) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(  :email, 
      	:image,
        :first_name,
        :last_name,
        :designation,
        :contact_no, 
        :last_name,
      	:password, 
      	:password_confirmation, 
      	:current_password ) }
  end
end
