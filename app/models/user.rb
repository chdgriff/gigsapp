class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_attached_file :profile_image, styles:{medium: "300x300>", small: "140x140>", thumb: "100x100#"}
  validates_attachment_content_type :profile_image, content_type: /\Aimage\/.*\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :job_applications
  has_many :posts, through: :job_applications
  has_many :ratings
end
