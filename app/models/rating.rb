class Rating < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :rater_id, presence: true
  validates :rating, presence: true
end
