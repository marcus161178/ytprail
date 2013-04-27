class Vendor < ActiveRecord::Base
  attr_accessible :category_id, :name, :url
  belongs_to :category
end
