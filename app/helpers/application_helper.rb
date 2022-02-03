module ApplicationHelper
  def page_title(title)
    content_for(:page_title) { title }

    tag.h1 title
  end
end
