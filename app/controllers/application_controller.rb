class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :friendship_not_exists?
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def friendship_not_exists?(other_user)
    (!Friend.where(user_id: session[:user_id], other_user_id: other_user).exists? &&
    !Friend.where(user_id: other_user, other_user_id: session[:user_id]).exists?)
  end

end
