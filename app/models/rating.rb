class Rating < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :rater_id, presence: true
  validates :rating, inclusion: {in: 0..5, message: "Rating must be from 0-5"}
end
