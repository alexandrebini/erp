module ActionsHelper
  def actions(view, resource)
    case view
    when :index then index_actions(resource)
    when :new then new_actions(resource)
    when :edit then edit_actions(resource)
    when :show then show_actions(resource)
    end
  end

  def index_actions(resource)
    new_link(resource)
  end

  def new_actions(resource)
    back_link(resource)
  end

  def edit_actions(resource)
    show_link(resource) + back_link(resource)
  end

  def show_actions(resource)
    edit_link(resource) + back_link(resource)
  end

  def table_actions(resource)
    content_tag(:td){ show_link(resource, 'btn-xs') } +
    content_tag(:td){ edit_link(resource, 'btn-xs') } +
    content_tag(:td){ destroy_link(resource, 'btn-xs') }
  end

  def new_link(resource)
    # todo
    link_to t('views.actions.new'), { action: :new }, class: 'btn btn-primary'
  end

  def show_link(resource, klass=nil)
    link_to t('views.actions.show'), resource, class: "btn btn-info #{ klass }"
  end

  def edit_link(resource, klass=nil)
    link_to t('views.actions.edit'), [:edit, resource], class: "btn btn-warning #{ klass }"
  end

  def destroy_link(resource, klass=nil)
    link_to t('views.actions.destroy'), resource, method: :delete,
      data: { confirm: t('views.actions.confirm') }, class: "btn btn-danger #{ klass }"
  end

  def back_link(resource)
    # todo
    link_to t('views.actions.back'), { action: :index }, class: 'btn btn-success'
  end

end