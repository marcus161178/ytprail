class AddPaperCliptoBlogImages < ActiveRecord::Migration
    def change
      add_attachment :blog_images, :imagefile       
    end
    
end
