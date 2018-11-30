class Search < ApplicationRecord
  def posts
    @posts ||= find_posts
  end

  private

  def find_posts
    posts = posts.where("title like ?", "%#{title}%") if title.present?
    posts = posts.where("description like ?", "%#{description}%") if description.present?
    posts = posts.where("location ?", "%#{location}%") if location.present?
    posts = posts.where("rate = ?", rate) if rate.present?
    posts
  end
end
