class CreateConcerts < ActiveRecord::Migration[7.1]
  def change
    create_table :_concerts do |t|
      t.string :date
      t.integer :_concerts_artiste_id
      t.string :nom
      t.string :endroit
      t.string :adresse
      t.string :ville
      t.integer :_concerts_pays_id
      t.text :infos
      t.string :lien
      t.string :prix
      t.string :heure
      t.string :acceptregles

      t.timestamps
    end
  end
end