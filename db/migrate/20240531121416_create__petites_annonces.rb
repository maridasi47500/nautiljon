class CreatePetitesAnnonces < ActiveRecord::Migration[7.1]
  def change
    create_table :_petites_annonces do |t|
      t.string :type
      t.string :titre
      t.string :image
      t.integer :_petites_annonces_section_id
      t.string :etat_produit
      t.integer :_petites_annonces_pays_id
      t.integer :_petites_annonces_lieu_id
      t.string :prix
      t.text :description
      t.string :statut
      t.text :comment
      t.string :acceptregles

      t.timestamps
    end
  end
end