class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :_restaurants do |t|
      t.string :nom
      t.string :image
      t.text :adresse
      t.string :tel
      t.text :description
      t.string :dept
      t.string :ville
      t.integer :_restaurants_pays_id
      t.text :horaires
      t.string :creation
      t.string :site
      t.string :acceptregles

      t.timestamps
    end
  end
end