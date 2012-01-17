module PostsHelper
  def recent_posts
    html_text = []

    Post.where('post_type = "post" AND status = "publish"').order('date DESC').each do |post|
          html_text << content_tag(:li, link_to(post.title, post))
    end
    html_text.join("\n").html_safe
  end
end
