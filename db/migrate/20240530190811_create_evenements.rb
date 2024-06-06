class CreateEvenements < ActiveRecord::Migration[7.1]
  def change
    create_table :evenements do |t|
      t.string :titre
      t.text :description
      t.string :date
      t.string :date_fin
      t.string :heure
      t.string :prix
      t.string :ville
      t.string :lieu
      t.string :adresse
      t.integer :evenements_pays_id
      t.string :lien
      t.string :site
      t.integer :evenements_people_id
      t.string :acceptregles

      t.timestamps
    end
  end
end