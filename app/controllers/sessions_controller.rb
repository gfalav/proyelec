class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])

  	if user and user.authenticate(params[:password])
  		session[:user_id]=user.id
  		session[:user_email]=user.email
  		redirect_to welcome_index_path
  	else
  		redirect_to login_url, alert: "Usuario/password no coincide"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	session[:user_email] = nil
  	redirect_to welcome_index_path, alert: "Logged out"
  end
end
