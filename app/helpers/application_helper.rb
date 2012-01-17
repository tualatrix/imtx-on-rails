module ApplicationHelper
  def menus(request)
    menu_messages = []
    has_set_current = false

    Post.where('post_type = "page" AND status = "publish"').each do |page|
      title_path = "/#{page.title}"
      text = content_tag(:li,
                         link_to(page.title, title_path),
                         :class => if request.path_info == title_path
                                     has_set_current = true
                                     'current_page_item'
                                   else
                                     'page_item'
                                   end)
      menu_messages << text
    end

    home_style = if has_set_current
                   'page_item'
                 else
                   'current_page_item'
                 end

    ["<li class='#{home_style}'><a href='/' title='Home'>Home</a></li>"].concat(menu_messages).join("\n").html_safe
  end
end
