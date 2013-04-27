class Image < ActiveRecord::Base
  attr_accessible :frontslideshow, :image_name, :image_url, :showguests, :user_id
  
  belongs_to :user  
    

end
