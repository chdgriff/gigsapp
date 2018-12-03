class Search < ApplicationRecord
  def search_posts
    posts = Post.all
    posts = posts.where(["title LIKE ?", "%#{title}%"]) if title.present?
    posts = posts.where(["description LIKE ?", "%#{description}%"]) if description.present?
    posts = posts.where(["location LIKE ?", "%#{location}%"]) if location.present?
    posts = posts.where(["rate = ?", rate]) if rate.present?
    return posts
  end
end
