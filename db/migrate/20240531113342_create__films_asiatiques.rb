class CreateFilmsAsiatiques < ActiveRecord::Migration[7.1]
  def change
    create_table :_films_asiatiques do |t|
      t.string :titre
      t.string :titre_alternatif
      t.string :titre_alternatif_suite
      t.string :titre_original_latin
      t.string :titre_original
      t.string :image
      t.string :image_internationale
      t.string :image_francaise
      t.integer :_films_asiatiques_origine_id
      t.string :date_debut_jj
      t.string :date_debut_mm
      t.string :date_debut_aaaa
      t.integer :_films_asiatiques_pays_id
      t.string :duree
      t.string :age
      t.integer :_films_asiatiques_genres_id
      t.integer :_films_asiatiques_themes_id
      t.integer :_films_asiatiques_staff_role_id
      t.integer :_films_asiatiques_staff_people_id
      t.integer :_films_asiatiques_societe_role_id
      t.integer :_films_asiatiques_societe_people_id
      t.integer :_films_asiatiques_type_id
      t.integer :_films_asiatiques_acteurs_id
      t.text :synopsis
      t.string :youtube
      t.string :licencie
      t.string :date_vf_jj
      t.string :date_vf_mm
      t.string :date_vf_aaaa
      t.integer :_films_asiatiques_editeurs_vf_role_id
      t.integer :_films_asiatiques_editeurs_vf_id
      t.string :date_debut_simulcast_jj
      t.string :date_debut_simulcast_mm
      t.string :date_debut_simulcast_aaaa
      t.string :site
      t.integer :_films_asiatiques_generiques_type_id
      t.integer :_films_asiatiques_generiques_people_id
      t.integer :_films_asiatiques_generiques_people2_id
      t.integer :_films_asiatiques_generiques_clip_id
      t.integer :_films_asiatiques_generiques_parole_id
      t.text :infos
      t.integer :_films_asiatiques_groupes_id
      t.integer :_films_asiatiques_anime_id
      t.integer :_films_asiatiques_anime_plus_id
      t.integer :_films_asiatiques_ln_id
      t.integer :_films_asiatiques_ln_plus_id
      t.integer :_films_asiatiques_manga_id
      t.integer :_films_asiatiques_manga_plus_id
      t.integer :_films_asiatiques_drama_id
      t.integer :_films_asiatiques_drama_plus_id
      t.integer :_films_asiatiques_jv_id
      t.integer :_films_asiatiques_jv_plus_id
      t.integer :_films_asiatiques_am_id
      t.integer :_films_asiatiques_am_plus_id
      t.integer :_films_asiatiques_cinema_id
      t.integer :_films_asiatiques_univers_id
      t.integer :_films_asiatiques_people_id
      t.integer :_films_asiatiques_litterature_asiatique_id
      t.integer :_films_asiatiques_litterature_asiatique_plus_id
      t.integer :_films_asiatiques_actualite_id
      t.integer :_films_asiatiques_culture_id
      t.integer :_films_asiatiques_emission_tv_id
      t.integer :_films_asiatiques_emission_tv_plus_id
      t.integer :_films_asiatiques_actualite_mini_id
      t.integer :_films_asiatiques_ost_id
      t.integer :_films_asiatiques_doujin_id
      t.integer :_films_asiatiques_cd_id
      t.integer :_films_asiatiques_sondage_id
      t.integer :_films_asiatiques_quizz_id
      t.integer :_films_asiatiques_concours_id
      t.integer :_films_asiatiques_dvd_id
      t.integer :_films_asiatiques_artbook_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end