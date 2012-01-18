module PostsHelper
  def recent_posts
    html_text = []

    Post.where('post_type = "post" AND status = "publish"').order('date DESC').each do |post|
          html_text << content_tag(:li, link_to(post.title, post))
    end
    html_text.join("\n").html_safe
  end

  def get_archives
    date_list = []
    html_text = []

    Post.select('DISTINCT(date)').each do |post|
      month = post.date.strftime('%b %Y')
      if date_list.index(month) == nil
        date_list << month
        html_text << content_tag(:li, link_to(month, post.date.strftime('/archives/%Y/%m')))
      end
    end
    html_text.join("\n").html_safe
  end
end
