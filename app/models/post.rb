class Post < ActiveRecord::Base
  def published?
    status == 'publish'
  end

  def is_page?
    post_type == 'page'
  end

  def can_comment?
    comment_status == 'open'
  end

end
