class ApplicationController < ActionController::Base
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def after_sign_in_path_for(resource)
    admin_companies_path
  end

  def check_user_access
      if session[:user_id]
        flash.now[:error] ="You are an user now. Please sign out before login as an company"
      end
  end

  def check_user_company
      if current_company
        flash.now[:error] ="You are a company now. Please sign out before login as an user"
      end
  end
end
