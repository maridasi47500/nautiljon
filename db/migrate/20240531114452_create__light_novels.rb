class CreateLightNovels < ActiveRecord::Migration[7.1]
  def change
    create_table :_light_novels do |t|
      t.string :titre
      t.string :titre_alternatif
      t.string :titre_alternatif_suite
      t.string :titre_original_latin
      t.string :titre_original
      t.string :image
      t.string :image_vo
      t.integer :_light_novels_pays_id
      t.integer :_light_novels_genres_id
      t.string :webcomic
      t.integer :_light_novels_themes_id
      t.string :annee_vo
      t.string :annee_vf
      t.string :nb_volumes_vo
      t.string :nb_chapitres_vo
      t.string :nb_volumes_vf
      t.string :nb_chapitres_vf
      t.integer :_light_novels_encours_vo_id
      t.integer :_light_novels_encours_vf_id
      t.integer :_light_novels_editeurs_vo_id
      t.integer :_light_novels_editeurs_vf_id
      t.integer :_light_novels_editeurs_vf_collection_id
      t.integer :_light_novels_prepublie_id
      t.integer :_light_novels_staff_role_id
      t.integer :_light_novels_staff_people_id
      t.integer :_light_novels_societe_role_id
      t.integer :_light_novels_societe_people_id
      t.string :age
      t.integer :_light_novels_public_averti_id
      t.integer :_light_novels_commerce_id
      t.string :adapte_anime
      t.string :prix
      t.text :resume
      t.integer :_light_novels_groupes_id
      t.integer :_light_novels_anime_id
      t.integer :_light_novels_anime_plus_id
      t.integer :_light_novels_manga_id
      t.integer :_light_novels_manga_plus_id
      t.integer :_light_novels_ln_id
      t.integer :_light_novels_ln_plus_id
      t.integer :_light_novels_drama_id
      t.integer :_light_novels_drama_plus_id
      t.integer :_light_novels_jv_id
      t.integer :_light_novels_jv_plus_id
      t.integer :_light_novels_am_id
      t.integer :_light_novels_am_plus_id
      t.integer :_light_novels_litterature_asiatique_id
      t.integer :_light_novels_litterature_asiatique_plus_id
      t.integer :_light_novels_ost_id
      t.integer :_light_novels_artbook_id
      t.integer :_light_novels_actualite_id
      t.integer :_light_novels_culture_id
      t.integer :_light_novels_actualite_mini_id
      t.integer :_light_novels_quizz_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end