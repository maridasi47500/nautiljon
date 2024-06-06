class CreateRestaurantsPays < ActiveRecord::Migration[7.1]
  def change
    create_table :_restaurants_pays do |t|
      t.string :name

      t.timestamps
    end
  end
end