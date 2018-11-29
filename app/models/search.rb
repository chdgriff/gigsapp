class Search < ApplicationRecord
  def post
    @posts ||= find_post
  end

  private

  def find_post
    post = post.where("title like ?", "%#{title}%") if title.present?
    post = post.where("description like ?", "%#{description}%") if description.present?
    post = post.where("location ?", "%#{location}%") if location.present?
    post = post.where("rate = ?", rate) if rate.present?
    post
  end
end
