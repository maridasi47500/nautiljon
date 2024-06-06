class CreateRecettes < ActiveRecord::Migration[7.1]
  def change
    create_table :_recettes do |t|
      t.string :nom
      t.integer :_recettes_type_id
      t.string :image
      t.string :preparation
      t.string :cuisson
      t.string :nb_pers
      t.integer :_recettes_plat_id
      t.integer :_recettes_difficulte_id
      t.text :ingredients
      t.text :texte
      t.string :source
      t.text :comment
      t.string :acceptregles

      t.timestamps
    end
  end
end