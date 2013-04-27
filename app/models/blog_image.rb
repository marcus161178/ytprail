class BlogImage < ActiveRecord::Base
  attr_accessible :post_id, :imagefile
  belongs_to :post
  
  has_attached_file :imagefile, :styles => { :medium => "300x300>", 
                                            :thumb => "100x100>" }, 
                                            :default_url => "/images/:style/missing.png"
end
