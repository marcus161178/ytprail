class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_name
      t.string :image_url
      t.boolean :frontslideshow, :default => false
      t.boolean :showguests, :default => true
      t.integer :user_id

      t.timestamps
    end
  end
end
