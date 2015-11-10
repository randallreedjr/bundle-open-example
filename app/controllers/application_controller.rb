class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  alias_method :devise_current_user, :current_user
  alias_method :devise_current_author, :current_author

  def current_user
    devise_current_user || devise_current_author
  end
end
