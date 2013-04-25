class SessionsController < ApplicationController
  def create
    if current_company
      flash[:error] = "you are a company now. Please logout before sign in as user"
      redirect_to root_path
    else
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id
      redirect_to referral_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
