class CreateDoujinshis < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis do |t|
      t.integer :_doujinshis_france_id
      t.string :titre
      t.string :titre_alternatif
      t.string :titre_alternatif_suite
      t.string :titre_original_latin
      t.string :titre_original
      t.string :image
      t.string :image_vo
      t.integer :_doujinshis_origine_id
      t.integer :_doujinshis_pays_id
      t.integer :_doujinshis_type_id
      t.string :numerique
      t.integer :_doujinshis_genres_id
      t.integer :_doujinshis_themes_id
      t.integer :_doujinshis_genres_averti_id
      t.string :date_parution_vo_jj
      t.string :date_parution_vo_mm
      t.string :date_parution_vo_aaaa
      t.string :date_parution_vf_jj
      t.string :date_parution_vf_mm
      t.string :date_parution_vf_aaaa
      t.string :nb_page
      t.integer :_doujinshis_conventions_id
      t.integer :_doujinshis_role_id
      t.integer :_doujinshis_staff_people_id
      t.string :staff_txt
      t.integer :_doujinshis_public_averti_id
      t.integer :_doujinshis_censure_id
      t.string :tags
      t.string :prix
      t.integer :_doujinshis_gratuit_id
      t.string :lien_achat
      t.text :infos
      t.text :resume
      t.integer :_doujinshis_groupes_id
      t.integer :_doujinshis_anime_id
      t.integer :_doujinshis_anime_plus_id
      t.integer :_doujinshis_manga_id
      t.integer :_doujinshis_manga_plus_id
      t.integer :_doujinshis_ln_id
      t.integer :_doujinshis_ln_plus_id
      t.integer :_doujinshis_doujinshi_id
      t.integer :_doujinshis_doujinshi_plus_id
      t.integer :_doujinshis_drama_id
      t.integer :_doujinshis_drama_plus_id
      t.integer :_doujinshis_jv_id
      t.integer :_doujinshis_jv_plus_id
      t.integer :_doujinshis_am_id
      t.integer :_doujinshis_am_plus_id
      t.integer :_doujinshis_litterature_asiatique_id
      t.integer :_doujinshis_litterature_asiatique_plus_id
      t.integer :_doujinshis_artbook_id
      t.integer :_doujinshis_actualite_id
      t.integer :_doujinshis_culture_id
      t.integer :_doujinshis_actualite_mini_id
      t.integer :_doujinshis_perso_id
      t.integer :_doujinshis_perso_plus_id
      t.integer :_doujinshis_perso_manga_id
      t.integer :_doujinshis_jv_perso_id
      t.integer :_doujinshis_quizz_id
      t.integer :_doujinshis_people_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end