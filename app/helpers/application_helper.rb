module ApplicationHelper
  def menus
    menu_messages = []
    menu_messages << '<li class="current_page_item"><a href="/" title="Home">Home</a></li>'

    Post.where('post_type = "page" AND status = "publish"').each do |page|
      text = content_tag(:li, link_to(page.title, page))
      menu_messages << text
    end
    menu_messages.join("\n").html_safe
  end
end
