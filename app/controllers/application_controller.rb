class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate

  def authenticate
    admin_signed_in? || authenticate_user!
  end

  protected

  def authenticate_admin
    return if admin_signed_in?
    redirect_to root_path, notice: 'You cannot access that page'
  end
end
