class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :url
      t.integer :post_id

      t.timestamps
    end
  end
end
