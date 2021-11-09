class ApplicationController < ActionController::Base
  before_action :authenticate_company!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected 

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name description])
    
  end
end


def verify_password 
  if(params[:company][:password]).blank? && (params[:company][:password_confirmation]).blank?
    params[:company].extract!(:password, :password_confirmation)
  end
end