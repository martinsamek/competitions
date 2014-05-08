class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_admin
    unless current_user.admin?
      redirect_to root_url, notice: "Pristup povoleny len adminom"
    end
  end

  def require_current_user
    unless current_user
      redirect_to root_url, notice: "Musite byt prihlaseny"
    end
  end
private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to login_url, alert: "Neautorizovany !!!" if current_user.nil?
  end
end
