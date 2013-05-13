class User < ActiveRecord::Base
  rolify
  has_many :photos  
  has_many :friendships
  has_many :friends, :through => :friendships
  mount_uploader :avatar, AvatarUploader
 
   
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :avatar, :avatar_cache, :remove_avatar
  
 
  
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false

  #validates_presence_of   :avatar
  #validates_integrity_of  :avatar
  #validates_processing_of :avatar

  before_create :assign_role

    def assign_role
      # assign a default role if no role is assigned
      self.add_role :user if self.roles.first.nil?
    end
  
end
