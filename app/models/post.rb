class Post < ActiveRecord::Base
  attr_accessible :body, :title, :user_id, :blog_images_attributes, :imagefile
  
  has_many  :blog_images, :dependent => :destroy
  accepts_nested_attributes_for :blog_images, :allow_destroy => true
  
  belongs_to :user
  
  has_many :categories
  has_many :comments
  
   default_scope order('created_at DESC')
  
end
