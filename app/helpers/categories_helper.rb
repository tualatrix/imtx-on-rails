module CategoriesHelper
  def get_categories
    html_text = []

    Category.all.each do |category|
          html_text << content_tag(:li, link_to(category.title, category))
    end
    html_text.join("\n").html_safe
  end
end
