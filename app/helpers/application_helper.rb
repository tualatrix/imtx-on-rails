module ApplicationHelper
  def menus(request)
    menu_messages = []
    if request.path_info == '/'
      menu_messages << '<li class="current_page_item"><a href="/" title="Home">Home</a></li>'
    else
      menu_messages << '<li class="page_item"><a href="/" title="Home">Home</a></li>'
    end

    Post.where('post_type = "page" AND status = "publish"').each do |page|
      title_path = "/#{page.title}"
      text = content_tag(:li, link_to(page.title, title_path), :class => if request.path_info == title_path
                'current_page_item'
              else
                'page_item'
              end)
      menu_messages << text
    end
    menu_messages.join("\n").html_safe
  end
end
