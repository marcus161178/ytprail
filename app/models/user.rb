class User < ActiveRecord::Base
  attr_accessible :bridename, :groomname, :username, :password, :password_confirmation
  
  has_secure_password
  has_many :images
  has_many :posts
  
  before_save {|user| user.username = username.downcase }
  
  validates :bridename, presence: true, length: {maximum:30} 
  validates :groomname, presence: true, length: {maximum:30} 
  validates :username, presence: true, length: {maximum:30}, uniqueness:  { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 6}
  validates :password_confirmation, presence: true
  
 
end
