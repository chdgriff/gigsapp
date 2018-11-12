class Post < ApplicationRecord
  belongs_to :user

  has_many :job_applications
  has_many :users, through: :job_applications

  validates :title, presence: true, length: {minimum: 3}

  has_attached_file :asset, styles: {
    medium: '300x300>',
    small: '140x140>',
    thumb: '64x64!'
  }, default_url: ":style/missing_asset.jpg"
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
end
