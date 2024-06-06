class CreateAnimes < ActiveRecord::Migration[7.1]
  def change
    create_table :animes do |t|
      t.string :titre
      t.string :titre_alternatif
      t.string :titre_alternatif_suite
      t.string :titre_original_latin
      t.string :titre_original
      t.string :image
      t.integer :animes_format_id
      t.integer :animes_origine_id
      t.string :webanime
      t.integer :animes_encours_id
      t.string :date_debut_jj
      t.string :date_debut_mm
      t.string :date_debut_aaaa
      t.string :date_fin_jj
      t.string :date_fin_mm
      t.string :date_fin_aaaa
      t.integer :animes_pays_id
      t.integer :animes_genres_id
      t.integer :animes_themes_id
      t.integer :animes_staff_role_id
      t.integer :animes_staff_people_id
      t.integer :animes_societe_role_id
      t.integer :animes_societe_people_id
      t.integer :animes_public_averti_id
      t.string :age
      t.string :nb_ep
      t.string :total_ep_inconnu
      t.string :duree
      t.string :licencie
      t.integer :animes_editeurs_vf_role_id
      t.integer :animes_editeurs_vf_id
      t.string :date_debut_simulcast_jj
      t.string :date_debut_simulcast_mm
      t.string :date_debut_simulcast_aaaa
      t.string :date_vf_jj
      t.string :date_vf_mm
      t.string :date_vf_aaaa
      t.string :image_francaise
      t.text :description
      t.string :site
      t.string :site2
      t.string :youtube
      t.integer :animes_groupes_id
      t.integer :animes_actualite_id
      t.integer :animes_actualite_mini_id
      t.integer :animes_anime_id
      t.integer :animes_anime_plus_id
      t.integer :animes_ln_id
      t.integer :animes_ln_plus_id
      t.integer :animes_manga_id
      t.integer :animes_manga_plus_id
      t.integer :animes_jv_id
      t.integer :animes_jv_plus_id
      t.integer :animes_am_id
      t.integer :animes_am_plus_id
      t.integer :animes_drama_id
      t.integer :animes_drama_plus_id
      t.integer :animes_people_id
      t.integer :animes_dvd_id
      t.integer :animes_artbook_id
      t.integer :animes_photobook_id
      t.integer :animes_litterature_asiatique_id
      t.integer :animes_litterature_asiatique_plus_id
      t.integer :animes_culture_id
      t.integer :animes_ost_id
      t.integer :animes_cd_id
      t.integer :animes_doujin_id
      t.integer :animes_amv_id
      t.integer :animes_cinema_id
      t.integer :animes_quizz_id
      t.integer :animes_topic_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end