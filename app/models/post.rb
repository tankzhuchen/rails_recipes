class Post < ApplicationRecord

  belongs_to :user

  has_many :likes, :dependent => :destroy
  has_many :liked_users, :through => :likes, :source => :user

  def find_like(user)
    self.likes.where( :user_id => user.id ).first
  end

  mount_uploader :image, ImageUploader

end
