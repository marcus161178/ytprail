class Category < ActiveRecord::Base
  attr_accessible :name, :post_id, :url
  belongs_to :post
  has_many :vendors
  
end
