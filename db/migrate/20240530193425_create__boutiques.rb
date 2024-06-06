class CreateBoutiques < ActiveRecord::Migration[7.1]
  def change
    create_table :_boutiques do |t|
      t.string :nom
      t.string :image
      t.text :adresse
      t.string :tel
      t.text :description
      t.string :dept
      t.string :ville
      t.integer :_boutiques_pays_id
      t.string :site
      t.string :acceptregles

      t.timestamps
    end
  end
end