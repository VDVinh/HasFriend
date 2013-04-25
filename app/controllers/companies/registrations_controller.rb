class Companies::RegistrationsController < Devise::RegistrationsController
  before_filter :check_user_access, :only => :new
  def new
    super
  end

end
