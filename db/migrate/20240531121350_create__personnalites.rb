class CreatePersonnalites < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnalites do |t|
      t.string :nom
      t.string :nom_alternatif
      t.string :nom_alternatif_suite
      t.string :nom_original_latin
      t.string :nom_original
      t.string :nom_original_2
      t.string :nom_original_3
      t.string :nom_original_4
      t.integer :_personnalites_type_people_id
      t.integer :_personnalites_sexe_id
      t.integer :_personnalites_pays_id
      t.string :decede
      t.string :date_nais_jj
      t.string :date_nais_mm
      t.string :date_nais_aaaa
      t.string :date_deces_jj
      t.string :date_deces_mm
      t.string :date_deces_aaaa
      t.string :image
      t.integer :_personnalites_statut_id
      t.string :debut
      t.string :fin
      t.integer :_personnalites_genres_id
      t.integer :_personnalites_labels_id
      t.integer :_personnalites_labels_debut_id
      t.integer :_personnalites_labels_fin_id
      t.integer :_personnalites_labels_ex_id
      t.integer :_personnalites_agences_id
      t.integer :_personnalites_agences_debut_id
      t.integer :_personnalites_agences_fin_id
      t.integer :_personnalites_agences_ex_id
      t.integer :_personnalites_roles_id
      t.integer :_personnalites_id_membre_id
      t.integer :_personnalites_ex_id
      t.integer :_personnalites_ex_debut_id
      t.integer :_personnalites_ex_fin_id
      t.text :bio
      t.integer :_personnalites_id_galerie_id
      t.string :liaison_auto_galerie
      t.integer :_personnalites_id_travaux_id
      t.string :liaison_auto_cosplay
      t.integer :_personnalites_people_id
      t.integer :_personnalites_people_plus_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end