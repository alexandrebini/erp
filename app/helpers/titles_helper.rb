module TitlesHelper
  def title(view, resource)
    content_tag :h1 do
      t "views.titles.#{ view }", resource_name: resource_name(resource).human
    end
  end
end