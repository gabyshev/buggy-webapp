class Product < ActiveRecord::Base
  has_attached_file :image, styles: {medium: '300x300>', thumb: '350x350>'}, default_url: 'http://placehold.it/350x250'
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  belongs_to :user
  validate :user_cannot_have_more_than_five_products

  def user_cannot_have_more_than_five_products
    errors.add(:base, "You can't have more than 5 products") if self.user.products.count >= 5
  end
end
