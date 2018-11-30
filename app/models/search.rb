class Search < ApplicationRecord
  def serach_posts
    posts = Post.all
    posts = posts.where("title like ?", "%#{title}%") if title.present?
    posts = posts.where("description like ?", "%#{description}%") if description.present?
    posts = posts.where("location ?", "%#{location}%") if location.present?
    posts = posts.where("rate = ?", rate) if rate.present?
    return posts
  end
end
