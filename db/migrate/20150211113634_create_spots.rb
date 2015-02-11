class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :official_url
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
