class SessionController < ApplicationController
  def new
    redirect_to '/auth/github'
  end

	def create
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id

		redirect_to todos_url, :notice => "Uzytkownik #{user.name} zalogowany przez #{user.provider}"
	end

  def destroy
    reset_session
    redirect_to todos_url, :notice => "Wylogowano poprawnie!"
  end

  def failure
    redirect_to todos_url, :alert => "Authentication error: #{params[:message].humanize}"
  end
end
