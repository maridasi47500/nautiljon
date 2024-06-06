class CreateMangas < ActiveRecord::Migration[7.1]
  def change
    create_table :_mangas do |t|
      t.string :titre
      t.string :titre_alternatif
      t.string :titre_alternatif_suite
      t.string :titre_original_latin
      t.string :titre_original
      t.string :image
      t.string :image_vo
      t.integer :_mangas_pays_id
      t.integer :_mangas_type_id
      t.string :webcomic
      t.integer :_mangas_genres_id
      t.integer :_mangas_themes_id
      t.string :annee_vo
      t.string :annee_vf
      t.string :annee_defaut
      t.string :nb_volumes_vo
      t.string :nb_chapitres_vo
      t.string :nb_volumes_vf
      t.string :nb_chapitres_vf
      t.integer :_mangas_encours_vo_id
      t.integer :_mangas_encours_vf_id
      t.integer :_mangas_editeurs_vo_id
      t.integer :_mangas_editeurs_vf_id
      t.integer :_mangas_editeurs_vf_collection_id
      t.integer :_mangas_prepublie_id
      t.integer :_mangas_staff_role_id
      t.integer :_mangas_staff_people_id
      t.integer :_mangas_societe_role_id
      t.integer :_mangas_societe_people_id
      t.string :age
      t.integer :_mangas_public_averti_id
      t.integer :_mangas_commerce_id
      t.string :adapte_anime
      t.string :prix
      t.text :resume
      t.text :infos
      t.string :youtube
      t.integer :_mangas_groupes_id
      t.integer :_mangas_anime_id
      t.integer :_mangas_anime_plus_id
      t.integer :_mangas_ln_id
      t.integer :_mangas_ln_plus_id
      t.integer :_mangas_manga_id
      t.integer :_mangas_manga_plus_id
      t.integer :_mangas_drama_id
      t.integer :_mangas_drama_plus_id
      t.integer :_mangas_jv_id
      t.integer :_mangas_jv_plus_id
      t.integer :_mangas_am_id
      t.integer :_mangas_am_plus_id
      t.integer :_mangas_litterature_asiatique_id
      t.integer :_mangas_litterature_asiatique_plus_id
      t.integer :_mangas_artbook_id
      t.integer :_mangas_actualite_id
      t.integer :_mangas_culture_id
      t.integer :_mangas_actualite_mini_id
      t.integer :_mangas_sondage_id
      t.integer :_mangas_quizz_id
      t.integer :_mangas_concours_id
      t.integer :_mangas_people_id
      t.integer :_mangas_clip_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end