class Post < ActiveRecord::Base
  attr_accessible :body, :title, :user_id, :blog_images_attributes, :imagefile
  
  has_many  :blog_images
  accepts_nested_attributes_for :blog_images
  belongs_to :user
  has_many :categories
  has_many :comments
  
  
  
end
