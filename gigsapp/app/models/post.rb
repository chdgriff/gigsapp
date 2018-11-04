class Post < ApplicationRecord
  has_attached_file :asset, styles: {
    medium: '300x300>',
    small: '140x140>',
    thumb: '64x64!'
  }, default_url: ":style/missing_asset.jpg"
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
end
