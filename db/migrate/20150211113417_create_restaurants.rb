class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :tabelog_url
      t.string :name
      t.integer :evaluation
      t.string :title
      t.text :description
      t.string :address
      t.integer :lat
      t.integer :lng

      t.timestamps null: false
    end
  end
end
