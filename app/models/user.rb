class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :registerable
  ROLES = %i(admin moderator author)
  has_many :products

  def role?(role)
    self.role == role.to_s
  end
end
