class CreateJeuxVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :_jeux_videos do |t|
      t.string :titre_fr
      t.string :titre_original_latin
      t.string :titre_us
      t.string :titre_alternatif
      t.string :titre_original
      t.integer :_jeux_videos_plateforme_id
      t.string :date_fr_jj
      t.string :date_fr_mm
      t.string :date_fr_aaaa
      t.integer :_jeux_videos_pays_date_id
      t.string :date_originale_jj
      t.string :date_originale_mm
      t.string :date_originale_aaaa
      t.string :date_us_jj
      t.string :date_us_mm
      t.string :date_us_aaaa
      t.string :date_jap_jj
      t.string :date_jap_mm
      t.string :date_jap_aaaa
      t.integer :_jeux_videos_pays_id
      t.integer :_jeux_videos_etat_id
      t.string :prix
      t.string :ean
      t.integer :_jeux_videos_themes_id
      t.integer :_jeux_videos_genres_id
      t.string :multi
      t.string :multi_nb
      t.string :online
      t.string :age
      t.string :site
      t.string :pochette_eu
      t.string :pochette_asie
      t.string :pochette_us
      t.integer :_jeux_videos_staff_societe_role_id
      t.integer :_jeux_videos_staff_societe_id
      t.integer :_jeux_videos_staff_role_id
      t.integer :_jeux_videos_staff_people_id
      t.text :description
      t.string :youtube
      t.integer :_jeux_videos_groupes_id
      t.integer :_jeux_videos_actualite_id
      t.integer :_jeux_videos_actualite_mini_id
      t.integer :_jeux_videos_anime_id
      t.integer :_jeux_videos_anime_plus_id
      t.integer :_jeux_videos_ln_id
      t.integer :_jeux_videos_ln_plus_id
      t.integer :_jeux_videos_manga_id
      t.integer :_jeux_videos_manga_plus_id
      t.integer :_jeux_videos_jv_id
      t.integer :_jeux_videos_jv_plus_id
      t.integer :_jeux_videos_am_id
      t.integer :_jeux_videos_am_plus_id
      t.integer :_jeux_videos_drama_id
      t.integer :_jeux_videos_drama_plus_id
      t.integer :_jeux_videos_univers_id
      t.integer :_jeux_videos_dvd_id
      t.integer :_jeux_videos_artbook_id
      t.integer :_jeux_videos_litterature_asiatique_id
      t.integer :_jeux_videos_litterature_asiatique_plus_id
      t.integer :_jeux_videos_culture_id
      t.integer :_jeux_videos_ost_id
      t.integer :_jeux_videos_cd_id
      t.integer :_jeux_videos_doujin_id
      t.integer :_jeux_videos_amv_id
      t.integer :_jeux_videos_sondage_id
      t.integer :_jeux_videos_quizz_id
      t.integer :_jeux_videos_concours_id
      t.integer :_jeux_videos_people_id
      t.integer :_jeux_videos_topic_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end