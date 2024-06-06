class CreatePersonnageDanimes < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnage_danimes do |t|
      t.string :nom
      t.string :nom_alternatif
      t.string :nom_suite
      t.string :nom_original
      t.integer :_personnage_danimes_sexe_id
      t.integer :_personnage_danimes_anime_id
      t.integer :_personnage_danimes_doubleur_pays_id
      t.integer :_personnage_danimes_doubleur_people_id
      t.integer :_personnage_danimes_doubleur_role_id
      t.string :special
      t.string :image
      t.text :description
      t.integer :_personnage_danimes_perso_id
      t.integer :_personnage_danimes_perso_plus_id
      t.integer :_personnage_danimes_perso_manga_id
      t.integer :_personnage_danimes_jv_perso_id
      t.integer :_personnage_danimes_goodies_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end