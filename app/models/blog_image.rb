class BlogImage < ActiveRecord::Base
  attr_accessible :post_id, :imagefile
  belongs_to :post
  
  has_attached_file :imagefile, :path => ":rails_root/app/assets/images/blogimages/:id/:style/:basename.:extension",
                                 :url  => "/assets/blogimages/:id/:style/:basename.:extension"
end
