class ApplicationController < ActionController::Base
  helper_method :current_user

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to todos_url, :alert => exception.message
  end

  private

  def current_user
    begin
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue Mongoid::Errors::DocumentNotFound
      nil
    end
  end

end
