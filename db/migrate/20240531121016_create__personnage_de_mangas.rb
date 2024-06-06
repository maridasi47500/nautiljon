class CreatePersonnageDeMangas < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnage_de_mangas do |t|
      t.string :nom
      t.string :nom_alternatif
      t.string :nom_suite
      t.string :nom_original
      t.integer :_personnage_de_mangas_manga_id
      t.string :image
      t.text :description
      t.integer :_personnage_de_mangas_perso_manga_id
      t.integer :_personnage_de_mangas_perso_id
      t.integer :_personnage_de_mangas_perso_plus_id
      t.integer :_personnage_de_mangas_jv_perso_id
      t.integer :_personnage_de_mangas_goodies_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end