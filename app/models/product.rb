class Product < ActiveRecord::Base
  has_attached_file :image, styles: {medium: '300x300>', thumb: '350x350>'}, default_url: 'http://placehold.it/350x250'
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
