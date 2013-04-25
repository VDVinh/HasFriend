module Companies::SessionsHelper
  def resource
    @resource ||= Company.new
  end

  def resource_name
    :company
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:company]
  end
end
