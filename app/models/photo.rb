class Photo < ActiveRecord::Base
  resourcify
  
  attr_accessible  :name, :user_id, :image
  belongs_to :user
  has_many :photos
  
  mount_uploader :image, ImageUploader
end
