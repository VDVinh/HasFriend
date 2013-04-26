class Companies::SessionsController < Devise::SessionsController
  def new
    if current_user
      flash.now[:error] = "You are an user now. Please log out"
    else
      super
    end
  end



end
