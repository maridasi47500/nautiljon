class CreateLivres < ActiveRecord::Migration[7.1]
  def change
    create_table :_livres do |t|
      t.integer :_livres_type_id
      t.integer :_livres_type_secondaire_id
      t.string :titre
      t.string :titre_original_latin
      t.string :titre_original
      t.string :image
      t.string :date_parution_vo_jj
      t.string :date_parution_vo_mm
      t.string :date_parution_vo_aaaa
      t.string :date_parution_vf_jj
      t.string :date_parution_vf_mm
      t.string :date_parution_vf_aaaa
      t.integer :_livres_pays_id
      t.string :ean
      t.string :pages
      t.string :prix
      t.string :gratuit
      t.string :age
      t.integer :_livres_statut_publication_id
      t.integer :_livres_staff_role_id
      t.integer :_livres_staff_people_id
      t.integer :_livres_editeurs_vo_id
      t.integer :_livres_editeurs_vf_id
      t.string :collection
      t.string :traducteur
      t.integer :_livres_genres_id
      t.integer :_livres_themes_id
      t.integer :_livres_pays_theme_id
      t.integer :_livres_public_averti_id
      t.text :resume
      t.string :preview
      t.integer :_livres_groupes_id
      t.integer :_livres_anime_id
      t.integer :_livres_anime_plus_id
      t.integer :_livres_ln_id
      t.integer :_livres_ln_plus_id
      t.integer :_livres_manga_id
      t.integer :_livres_manga_plus_id
      t.integer :_livres_drama_id
      t.integer :_livres_drama_plus_id
      t.integer :_livres_am_id
      t.integer :_livres_am_plus_id
      t.integer :_livres_litterature_asiatique_id
      t.integer :_livres_litterature_asiatique_plus_id
      t.integer :_livres_goodies_id
      t.integer :_livres_actualite_id
      t.integer :_livres_culture_id
      t.integer :_livres_actualite_mini_id
      t.integer :_livres_people_id
      t.integer :_livres_jv_id
      t.integer :_livres_jv_plus_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end