class CreateRestaurantpizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurantpizzas do |t|
      t.integer :price
      t.references :pizza, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
