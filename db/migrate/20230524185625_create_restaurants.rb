class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.integer :rating
      t.string :content
      t.text :category
      t.text :reviews

      t.timestamps
    end
  end
end
