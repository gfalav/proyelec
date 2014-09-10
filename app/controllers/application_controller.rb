class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_action :authorize


  protected

  def authorize
  	if session[:user_id]== nil
  		redirect_to login_url, alert: 'Primero debe logearse'
    else
      user = User.find(session[:user_id])
      if user.Usertype == "Administrador"
      else
        redirect_to login_url, alert: 'Usuario no autorizado'
      end
  	end
  end
end
