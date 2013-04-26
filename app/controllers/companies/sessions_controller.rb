class Companies::SessionsController < Devise::SessionsController
  def new
    if current_user
      flash.now[:error] = "You are an user now. Please log out"
    else
      super
    end
  end

  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    respond_with resource, :location => after_sign_in_path_for(resource)
  end


end
