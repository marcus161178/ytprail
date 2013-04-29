class Category < ActiveRecord::Base
  attr_accessible :name, :post_id, :url
  
  has_ancestry
  
  belongs_to :post
end
