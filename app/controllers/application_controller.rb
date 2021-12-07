class ApplicationController < ActionController::Base

  private def require_signin
    unless current_user
      session[:intended_url] = request.url
      redirect_to new_session_path, alert: "Please sign in first!"
    end
  end

  private def require_admin
    unless current_user.admin?
      redirect_to root_path, alert: "Unauthorized access!"
    end
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def current_user?(user)
    current_user == user
  end

  def current_user_admin?(user)
    current_user && current_user.admin?
  end

  helper_method :current_user, :current_user?, :current_user_admin?
end
