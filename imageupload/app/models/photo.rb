class Photo < ActiveRecord::Base
  resourcify
  
  attr_accessible  :name, :user_id, :image, :private
  belongs_to :user
  has_many :photos

  validates_presence_of :name, :image
  
  mount_uploader :image, ImageUploader
end
