module ApplicationHelper
  def resource_name(resource)
    if resource.respond_to?(:model_name)
      resource.model_name
    else
      resource.class.model_name
    end
  end
end