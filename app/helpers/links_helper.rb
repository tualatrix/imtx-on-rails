module LinksHelper
  def get_links
    html_text = []

    Link.order('name ASC').each do |link|
      html_text << content_tag(:li, link_to(link.name, link.url))
    end
    html_text.join("\n").html_safe
  end
end
