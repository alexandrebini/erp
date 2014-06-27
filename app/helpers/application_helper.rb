module ApplicationHelper
  def resource_name(resource)
    if resource.respond_to?(:model_name)
      resource.model_name
    else
      resource.class.model_name
    end
  end

  def tag_id(f, *args)
    options = {}
    p '------------', f.object_name
    ActionView::Helpers::Tags::Base.new(f.object_name, args.join('_'), f).
      send :add_default_name_and_id, options
    options['id']
  end
end