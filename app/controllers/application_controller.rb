class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)

    if resource.persisted? && resource.first_name.blank?
      edit_user_registration_path
    # "http://www.google.com"
    else
      root_path
    end
  end

  # def after_sign_out_path_for(resource)
  #   root_path
  # end
end
