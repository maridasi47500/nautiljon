# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_31_121741) do
  create_table "_boutiques", force: :cascade do |t|
    t.string "nom"
    t.string "image"
    t.text "adresse"
    t.string "tel"
    t.text "description"
    t.string "dept"
    t.string "ville"
    t.integer "_boutiques_pays_id"
    t.string "site"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_boutiques_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves", force: :cascade do |t|
    t.string "titre"
    t.integer "_breves_cat_id"
    t.string "image"
    t.text "texte"
    t.string "tags"
    t.string "source"
    t.string "source_url"
    t.string "source2"
    t.string "source2_url"
    t.string "source3"
    t.string "source3_url"
    t.integer "_breves_actualite_id"
    t.integer "_breves_actualite_mini_id"
    t.integer "_breves_people_id"
    t.integer "_breves_anime_id"
    t.integer "_breves_ln_id"
    t.integer "_breves_manga_id"
    t.integer "_breves_drama_id"
    t.integer "_breves_am_id"
    t.integer "_breves_litterature_asiatique_id"
    t.integer "_breves_livre_jeunesse_id"
    t.integer "_breves_magazine_id"
    t.integer "_breves_beau_livre_id"
    t.integer "_breves_jv_id"
    t.integer "_breves_dvd_id"
    t.integer "_breves_artbook_id"
    t.integer "_breves_photobook_id"
    t.integer "_breves_goodies_id"
    t.integer "_breves_cinema_id"
    t.integer "_breves_evenement_id"
    t.integer "_breves_concerts_id"
    t.integer "_breves_recette_id"
    t.integer "_breves_cd_id"
    t.integer "_breves_ost_id"
    t.integer "_breves_amv_id"
    t.integer "_breves_clip_id"
    t.integer "_breves_emission_tv_id"
    t.integer "_breves_emission_tv_numero_id"
    t.integer "_breves_sondage_id"
    t.integer "_breves_quizz_id"
    t.integer "_breves_concours_id"
    t.integer "_breves_manga_editeur_id"
    t.integer "_breves_anime_studio_id"
    t.integer "_breves_jv_societe_id"
    t.integer "_breves_societe_id"
    t.integer "_breves_culture_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_amvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_anime_studios", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_artbooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_beau_livres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_cats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_cds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_cinemas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_clips", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_concerts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_concours", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_dvds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_emission_tv_numeros", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_emission_tvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_evenements", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_goodies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_jv_societes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_livre_jeunesses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_magazines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_manga_editeurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_osts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_photobooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_quizzs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_recettes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_societes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_breves_sondages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds", force: :cascade do |t|
    t.string "titre"
    t.string "titre_original"
    t.string "titre_original_latin"
    t.integer "_cds_type_id"
    t.string "ref"
    t.string "date_jj"
    t.string "date_mm"
    t.string "date_aaaa"
    t.string "prix"
    t.integer "_cds_monnaie_id"
    t.integer "_cds_role_id"
    t.integer "_cds_people_id"
    t.string "image"
    t.string "sametracklist"
    t.integer "_cds_labels_id"
    t.integer "_cds_distributeurs_id"
    t.text "infos"
    t.integer "_cds_groupes_id"
    t.integer "_cds_cd_id"
    t.integer "_cds_anime_id"
    t.integer "_cds_ln_id"
    t.integer "_cds_drama_id"
    t.integer "_cds_am_id"
    t.integer "_cds_jv_id"
    t.integer "_cds_emission_tv_id"
    t.integer "_cds_bonus_id"
    t.integer "_cds_manga_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_bonus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_cds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_distributeurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_emission_tvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_labels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_monnaies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_cds_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_clips___lives___bonus___concerts", force: :cascade do |t|
    t.integer "_clips_lives_hbonus_concerts_type_id"
    t.integer "_clips_lives_hbonus_concerts_type_bonus_id"
    t.string "titre"
    t.string "titre_original"
    t.string "date_jj"
    t.string "date_mm"
    t.string "date_aaaa"
    t.integer "_clips_lives_bonus_concerts_role_id"
    t.integer "_clips_lives_bonus_concerts_people_id"
    t.string "image"
    t.string "youtube"
    t.text "infos"
    t.integer "_clips_lives_bonus_concerts_clip_id"
    t.integer "_clips_lives_bonus_concerts_emission_tv_numero_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_clips___lives___bonus___concerts_clips", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_clips___lives___bonus___concerts_emission_tv_numeros", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_clips___lives___bonus___concerts_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_clips___lives___bonus___concerts_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_clips___lives___bonus___concerts_type_bonus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_clips___lives___bonus___concerts_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_concerts", force: :cascade do |t|
    t.string "date"
    t.integer "_concerts_artiste_id"
    t.string "nom"
    t.string "endroit"
    t.string "adresse"
    t.string "ville"
    t.integer "_concerts_pays_id"
    t.text "infos"
    t.string "lien"
    t.string "prix"
    t.string "heure"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_concerts_artistes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_concerts_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins", force: :cascade do |t|
    t.string "titre"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "titre_alternatif"
    t.integer "_doujins_conventions_id"
    t.string "ref"
    t.string "date_jj"
    t.string "date_mm"
    t.string "date_aaaa"
    t.integer "_doujins_role_id"
    t.integer "_doujins_people_id"
    t.string "cercle"
    t.string "image"
    t.text "infos"
    t.integer "_doujins_genres_id"
    t.integer "_doujins_groupes_id"
    t.integer "_doujins_anime_id"
    t.integer "_doujins_ln_id"
    t.integer "_doujins_drama_id"
    t.integer "_doujins_am_id"
    t.integer "_doujins_jv_id"
    t.integer "_doujins_doujin_id"
    t.integer "_doujins_artbook_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_artbooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_conventions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_doujins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujins_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis", force: :cascade do |t|
    t.integer "_doujinshis_france_id"
    t.string "titre"
    t.string "titre_alternatif"
    t.string "titre_alternatif_suite"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "image"
    t.string "image_vo"
    t.integer "_doujinshis_origine_id"
    t.integer "_doujinshis_pays_id"
    t.integer "_doujinshis_type_id"
    t.string "numerique"
    t.integer "_doujinshis_genres_id"
    t.integer "_doujinshis_themes_id"
    t.integer "_doujinshis_genres_averti_id"
    t.string "date_parution_vo_jj"
    t.string "date_parution_vo_mm"
    t.string "date_parution_vo_aaaa"
    t.string "date_parution_vf_jj"
    t.string "date_parution_vf_mm"
    t.string "date_parution_vf_aaaa"
    t.string "nb_page"
    t.integer "_doujinshis_conventions_id"
    t.integer "_doujinshis_role_id"
    t.integer "_doujinshis_staff_people_id"
    t.string "staff_txt"
    t.integer "_doujinshis_public_averti_id"
    t.integer "_doujinshis_censure_id"
    t.string "tags"
    t.string "prix"
    t.integer "_doujinshis_gratuit_id"
    t.string "lien_achat"
    t.text "infos"
    t.text "resume"
    t.integer "_doujinshis_groupes_id"
    t.integer "_doujinshis_anime_id"
    t.integer "_doujinshis_anime_plus_id"
    t.integer "_doujinshis_manga_id"
    t.integer "_doujinshis_manga_plus_id"
    t.integer "_doujinshis_ln_id"
    t.integer "_doujinshis_ln_plus_id"
    t.integer "_doujinshis_doujinshi_id"
    t.integer "_doujinshis_doujinshi_plus_id"
    t.integer "_doujinshis_drama_id"
    t.integer "_doujinshis_drama_plus_id"
    t.integer "_doujinshis_jv_id"
    t.integer "_doujinshis_jv_plus_id"
    t.integer "_doujinshis_am_id"
    t.integer "_doujinshis_am_plus_id"
    t.integer "_doujinshis_litterature_asiatique_id"
    t.integer "_doujinshis_litterature_asiatique_plus_id"
    t.integer "_doujinshis_artbook_id"
    t.integer "_doujinshis_actualite_id"
    t.integer "_doujinshis_culture_id"
    t.integer "_doujinshis_actualite_mini_id"
    t.integer "_doujinshis_perso_id"
    t.integer "_doujinshis_perso_plus_id"
    t.integer "_doujinshis_perso_manga_id"
    t.integer "_doujinshis_jv_perso_id"
    t.integer "_doujinshis_quizz_id"
    t.integer "_doujinshis_people_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_am_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_anime_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_artbooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_censures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_conventions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_doujinshi_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_doujinshis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_drama_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_frances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_genres_avertis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_gratuits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_jv_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_jv_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_litterature_asiatique_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_ln_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_manga_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_origines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_perso_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_perso_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_public_avertis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_quizzs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_doujinshis_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas", force: :cascade do |t|
    t.string "titre"
    t.string "titre_alternatif"
    t.string "titre_alternatif_suite"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "image"
    t.integer "_dramas_origine_id"
    t.integer "_dramas_encours_id"
    t.string "date_debut_jj"
    t.string "date_debut_mm"
    t.string "date_debut_aaaa"
    t.string "date_fin_jj"
    t.string "date_fin_mm"
    t.string "date_fin_aaaa"
    t.string "nb_ep"
    t.string "total_ep_inconnu"
    t.integer "_dramas_pays_id"
    t.string "duree"
    t.string "age"
    t.integer "_dramas_genres_id"
    t.integer "_dramas_themes_id"
    t.integer "_dramas_staff_role_id"
    t.integer "_dramas_staff_people_id"
    t.integer "_dramas_societe_role_id"
    t.integer "_dramas_societe_people_id"
    t.integer "_dramas_type_id"
    t.integer "_dramas_acteurs_id"
    t.text "synopsis"
    t.string "youtube"
    t.string "webdrama"
    t.integer "_dramas_editeurs_vf_role_id"
    t.integer "_dramas_editeurs_vf_id"
    t.string "date_debut_simulcast_jj"
    t.string "date_debut_simulcast_mm"
    t.string "date_debut_simulcast_aaaa"
    t.string "licencie"
    t.string "date_vf_jj"
    t.string "date_vf_mm"
    t.string "date_vf_aaaa"
    t.string "site"
    t.string "site2"
    t.integer "_dramas_programme_id"
    t.text "episodes"
    t.integer "_dramas_generiques_type_id"
    t.integer "_dramas_generiques_people_id"
    t.integer "_dramas_generiques_people2_id"
    t.integer "_dramas_generiques_clip_id"
    t.integer "_dramas_generiques_parole_id"
    t.text "infos"
    t.integer "_dramas_groupes_id"
    t.integer "_dramas_anime_id"
    t.integer "_dramas_anime_plus_id"
    t.integer "_dramas_ln_id"
    t.integer "_dramas_ln_plus_id"
    t.integer "_dramas_manga_id"
    t.integer "_dramas_manga_plus_id"
    t.integer "_dramas_drama_id"
    t.integer "_dramas_drama_plus_id"
    t.integer "_dramas_jv_id"
    t.integer "_dramas_jv_plus_id"
    t.integer "_dramas_am_id"
    t.integer "_dramas_am_plus_id"
    t.integer "_dramas_univers_id"
    t.integer "_dramas_litterature_asiatique_id"
    t.integer "_dramas_litterature_asiatique_plus_id"
    t.integer "_dramas_actualite_id"
    t.integer "_dramas_culture_id"
    t.integer "_dramas_actualite_mini_id"
    t.integer "_dramas_ost_id"
    t.integer "_dramas_doujin_id"
    t.integer "_dramas_cd_id"
    t.integer "_dramas_dvd_id"
    t.integer "_dramas_artbook_id"
    t.integer "_dramas_emission_tv_id"
    t.integer "_dramas_emission_tv_plus_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_acteurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_am_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_anime_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_artbooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_cds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_doujins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_drama_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_dvds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_editeurs_vf_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_editeurs_vfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_emission_tv_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_emission_tvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_encours", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_generiques_clips", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_generiques_paroles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_generiques_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_generiques_people2s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_generiques_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_jv_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_litterature_asiatique_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_ln_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_manga_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_origines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_osts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_programmes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_societe_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_societe_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dramas_univers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays", force: :cascade do |t|
    t.string "type"
    t.integer "_dvd_blu_rays_france_id"
    t.integer "_dvd_blu_rays_pays_id"
    t.string "titre"
    t.string "titre_alternatif"
    t.string "titre_original"
    t.string "image"
    t.string "date_parution_jj"
    t.string "date_parution_mm"
    t.string "date_parution_aaaa"
    t.string "prix"
    t.string "ean"
    t.string "ref"
    t.integer "_dvd_blu_rays_format_id"
    t.integer "_dvd_blu_rays_type_edition_id"
    t.integer "_dvd_blu_rays_editeurs_id"
    t.string "audiodescription"
    t.string "duree"
    t.string "nb_disque"
    t.text "resume"
    t.text "episodes"
    t.text "infos"
    t.string "youtube"
    t.integer "_dvd_blu_rays_public_averti_id"
    t.integer "_dvd_blu_rays_groupes_id"
    t.integer "_dvd_blu_rays_anime_id"
    t.integer "_dvd_blu_rays_drama_id"
    t.integer "_dvd_blu_rays_am_id"
    t.integer "_dvd_blu_rays_litterature_asiatique_id"
    t.integer "_dvd_blu_rays_jv_id"
    t.integer "_dvd_blu_rays_people_id"
    t.integer "_dvd_blu_rays_emission_tv_id"
    t.integer "_dvd_blu_rays_actualite_id"
    t.integer "_dvd_blu_rays_actualite_mini_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_editeurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_emission_tvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_formats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_frances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_public_avertis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_dvd___blu_rays_type_editions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers", force: :cascade do |t|
    t.string "nom"
    t.string "nom_alternatif"
    t.string "nom_suite"
    t.string "nom_original"
    t.string "image"
    t.integer "_fiche_univers_cat_id"
    t.text "description"
    t.integer "_fiche_univers_groupes_id"
    t.integer "_fiche_univers_univers_id"
    t.integer "_fiche_univers_anime_id"
    t.integer "_fiche_univers_perso_id"
    t.integer "_fiche_univers_manga_id"
    t.integer "_fiche_univers_perso_manga_id"
    t.integer "_fiche_univers_ln_id"
    t.integer "_fiche_univers_doujinshi_id"
    t.integer "_fiche_univers_jv_id"
    t.integer "_fiche_univers_jv_perso_id"
    t.integer "_fiche_univers_drama_id"
    t.integer "_fiche_univers_am_id"
    t.integer "_fiche_univers_litterature_asiatique_id"
    t.integer "_fiche_univers_people_id"
    t.integer "_fiche_univers_actualite_id"
    t.integer "_fiche_univers_actualite_mini_id"
    t.integer "_fiche_univers_culture_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_cats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_doujinshis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_jv_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_perso_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_fiche_univers_univers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques", force: :cascade do |t|
    t.string "titre"
    t.string "titre_alternatif"
    t.string "titre_alternatif_suite"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "image"
    t.string "image_internationale"
    t.string "image_francaise"
    t.integer "_films_asiatiques_origine_id"
    t.string "date_debut_jj"
    t.string "date_debut_mm"
    t.string "date_debut_aaaa"
    t.integer "_films_asiatiques_pays_id"
    t.string "duree"
    t.string "age"
    t.integer "_films_asiatiques_genres_id"
    t.integer "_films_asiatiques_themes_id"
    t.integer "_films_asiatiques_staff_role_id"
    t.integer "_films_asiatiques_staff_people_id"
    t.integer "_films_asiatiques_societe_role_id"
    t.integer "_films_asiatiques_societe_people_id"
    t.integer "_films_asiatiques_type_id"
    t.integer "_films_asiatiques_acteurs_id"
    t.text "synopsis"
    t.string "youtube"
    t.string "licencie"
    t.string "date_vf_jj"
    t.string "date_vf_mm"
    t.string "date_vf_aaaa"
    t.integer "_films_asiatiques_editeurs_vf_role_id"
    t.integer "_films_asiatiques_editeurs_vf_id"
    t.string "date_debut_simulcast_jj"
    t.string "date_debut_simulcast_mm"
    t.string "date_debut_simulcast_aaaa"
    t.string "site"
    t.integer "_films_asiatiques_generiques_type_id"
    t.integer "_films_asiatiques_generiques_people_id"
    t.integer "_films_asiatiques_generiques_people2_id"
    t.integer "_films_asiatiques_generiques_clip_id"
    t.integer "_films_asiatiques_generiques_parole_id"
    t.text "infos"
    t.integer "_films_asiatiques_groupes_id"
    t.integer "_films_asiatiques_anime_id"
    t.integer "_films_asiatiques_anime_plus_id"
    t.integer "_films_asiatiques_ln_id"
    t.integer "_films_asiatiques_ln_plus_id"
    t.integer "_films_asiatiques_manga_id"
    t.integer "_films_asiatiques_manga_plus_id"
    t.integer "_films_asiatiques_drama_id"
    t.integer "_films_asiatiques_drama_plus_id"
    t.integer "_films_asiatiques_jv_id"
    t.integer "_films_asiatiques_jv_plus_id"
    t.integer "_films_asiatiques_am_id"
    t.integer "_films_asiatiques_am_plus_id"
    t.integer "_films_asiatiques_cinema_id"
    t.integer "_films_asiatiques_univers_id"
    t.integer "_films_asiatiques_people_id"
    t.integer "_films_asiatiques_litterature_asiatique_id"
    t.integer "_films_asiatiques_litterature_asiatique_plus_id"
    t.integer "_films_asiatiques_actualite_id"
    t.integer "_films_asiatiques_culture_id"
    t.integer "_films_asiatiques_emission_tv_id"
    t.integer "_films_asiatiques_emission_tv_plus_id"
    t.integer "_films_asiatiques_actualite_mini_id"
    t.integer "_films_asiatiques_ost_id"
    t.integer "_films_asiatiques_doujin_id"
    t.integer "_films_asiatiques_cd_id"
    t.integer "_films_asiatiques_sondage_id"
    t.integer "_films_asiatiques_quizz_id"
    t.integer "_films_asiatiques_concours_id"
    t.integer "_films_asiatiques_dvd_id"
    t.integer "_films_asiatiques_artbook_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_acteurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_am_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_anime_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_artbooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_cds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_cinemas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_concours", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_doujins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_drama_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_dvds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_editeurs_vf_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_editeurs_vfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_emission_tv_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_emission_tvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles", force: :cascade do |t|
    t.string "titre"
    t.string "titre_original"
    t.integer "_films_asiatiques_en_salles_pays_id"
    t.integer "_films_asiatiques_en_salles_langue_id"
    t.string "image"
    t.string "annee"
    t.integer "_films_asiatiques_en_salles_pays_origine_id"
    t.string "duree"
    t.string "age"
    t.integer "_films_asiatiques_en_salles_genres_id"
    t.string "youtube"
    t.string "site"
    t.string "site2"
    t.integer "_films_asiatiques_en_salles_staff_role_id"
    t.integer "_films_asiatiques_en_salles_staff_people_id"
    t.integer "_films_asiatiques_en_salles_type_id"
    t.integer "_films_asiatiques_en_salles_acteurs_id"
    t.integer "_films_asiatiques_en_salles_anime_id"
    t.integer "_films_asiatiques_en_salles_am_id"
    t.integer "_films_asiatiques_en_salles_drama_id"
    t.integer "_films_asiatiques_en_salles_actualite_id"
    t.integer "_films_asiatiques_en_salles_actualite_mini_id"
    t.text "synopsis"
    t.text "recompense"
    t.text "comment"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_acteurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_langues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_pays_origines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_en_salles_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_generiques_clips", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_generiques_paroles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_generiques_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_generiques_people2s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_generiques_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_jv_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_litterature_asiatique_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_ln_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_manga_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_origines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_osts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_quizzs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_societe_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_societe_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_sondages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_films_asiatiques_univers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generique_de_jeu_videos", force: :cascade do |t|
    t.string "titre"
    t.string "titre_original"
    t.integer "_generique_de_jeu_videos_type_id"
    t.string "number"
    t.integer "_generique_de_jeu_videos_staff_role_id"
    t.integer "_generique_de_jeu_videos_staff_people_id"
    t.text "description"
    t.string "instrumental"
    t.string "date_jj"
    t.string "date_mm"
    t.string "date_aaaa"
    t.string "youtube"
    t.text "paroles"
    t.text "paroles_trad"
    t.string "membre_show"
    t.integer "_generique_de_jeu_videos_jv_id"
    t.integer "_generique_de_jeu_videos_jv_generic_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generique_de_jeu_videos_jv_generics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generique_de_jeu_videos_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generique_de_jeu_videos_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generique_de_jeu_videos_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generique_de_jeu_videos_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generiques", force: :cascade do |t|
    t.string "titre"
    t.string "titre_original"
    t.integer "_generiques_id_anime_id"
    t.integer "_generiques_type_id"
    t.string "number"
    t.integer "_generiques_staff_role_id"
    t.integer "_generiques_staff_people_id"
    t.text "description"
    t.string "instrumental"
    t.string "date_jj"
    t.string "date_mm"
    t.string "date_aaaa"
    t.string "youtube"
    t.text "paroles"
    t.text "paroles_trad"
    t.string "membre_show"
    t.string "episodes"
    t.integer "_generiques_generic_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generiques_generics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generiques_id_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generiques_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generiques_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_generiques_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies", force: :cascade do |t|
    t.integer "_goodies_type_id"
    t.integer "_goodies_pays_id"
    t.string "titre"
    t.string "titre_alternatif"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "image"
    t.string "image_vo"
    t.string "date_parution_vo_jj"
    t.string "date_parution_vo_mm"
    t.string "date_parution_vo_aaaa"
    t.string "date_parution_vf_jj"
    t.string "date_parution_vf_mm"
    t.string "date_parution_vf_aaaa"
    t.string "date_reedition_jj"
    t.string "date_reedition_mm"
    t.string "date_reedition_aaaa"
    t.string "prix"
    t.string "commerce"
    t.string "ean"
    t.string "ref"
    t.integer "_goodies_matiere_id"
    t.string "dimensions_h"
    t.string "dimensions_w"
    t.string "dimensions_z"
    t.string "poids"
    t.string "echelle"
    t.string "articule"
    t.string "site"
    t.integer "_goodies_editeurs_vo_id"
    t.integer "_goodies_editeurs_vf_id"
    t.integer "_goodies_staff_role_id"
    t.integer "_goodies_staff_people_id"
    t.string "sculpteur"
    t.integer "_goodies_societe_role_id"
    t.integer "_goodies_societe_people_id"
    t.text "resume"
    t.text "infos"
    t.string "youtube"
    t.integer "_goodies_public_averti_id"
    t.integer "_goodies_groupes_id"
    t.integer "_goodies_anime_id"
    t.integer "_goodies_perso_id"
    t.integer "_goodies_manga_id"
    t.integer "_goodies_perso_manga_id"
    t.integer "_goodies_jv_id"
    t.integer "_goodies_jv_perso_id"
    t.integer "_goodies_ln_id"
    t.integer "_goodies_drama_id"
    t.integer "_goodies_am_id"
    t.integer "_goodies_artbook_id"
    t.integer "_goodies_photobook_id"
    t.integer "_goodies_doujinshi_id"
    t.integer "_goodies_dvd_id"
    t.integer "_goodies_cd_id"
    t.integer "_goodies_ost_id"
    t.integer "_goodies_people_id"
    t.integer "_goodies_goodies_id"
    t.integer "_goodies_clip_id"
    t.integer "_goodies_bonus_id"
    t.integer "_goodies_litterature_asiatique_id"
    t.integer "_goodies_actualite_id"
    t.integer "_goodies_actualite_mini_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_artbooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_bonus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_cds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_clips", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_doujinshis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_dvds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_editeurs_vfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_editeurs_vos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_goodies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_jv_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_matieres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_osts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_perso_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_photobooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_public_avertis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_societe_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_societe_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_goodies_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos", force: :cascade do |t|
    t.string "titre_fr"
    t.string "titre_original_latin"
    t.string "titre_us"
    t.string "titre_alternatif"
    t.string "titre_original"
    t.integer "_jeux_videos_plateforme_id"
    t.string "date_fr_jj"
    t.string "date_fr_mm"
    t.string "date_fr_aaaa"
    t.integer "_jeux_videos_pays_date_id"
    t.string "date_originale_jj"
    t.string "date_originale_mm"
    t.string "date_originale_aaaa"
    t.string "date_us_jj"
    t.string "date_us_mm"
    t.string "date_us_aaaa"
    t.string "date_jap_jj"
    t.string "date_jap_mm"
    t.string "date_jap_aaaa"
    t.integer "_jeux_videos_pays_id"
    t.integer "_jeux_videos_etat_id"
    t.string "prix"
    t.string "ean"
    t.integer "_jeux_videos_themes_id"
    t.integer "_jeux_videos_genres_id"
    t.string "multi"
    t.string "multi_nb"
    t.string "online"
    t.string "age"
    t.string "site"
    t.string "pochette_eu"
    t.string "pochette_asie"
    t.string "pochette_us"
    t.integer "_jeux_videos_staff_societe_role_id"
    t.integer "_jeux_videos_staff_societe_id"
    t.integer "_jeux_videos_staff_role_id"
    t.integer "_jeux_videos_staff_people_id"
    t.text "description"
    t.string "youtube"
    t.integer "_jeux_videos_groupes_id"
    t.integer "_jeux_videos_actualite_id"
    t.integer "_jeux_videos_actualite_mini_id"
    t.integer "_jeux_videos_anime_id"
    t.integer "_jeux_videos_anime_plus_id"
    t.integer "_jeux_videos_ln_id"
    t.integer "_jeux_videos_ln_plus_id"
    t.integer "_jeux_videos_manga_id"
    t.integer "_jeux_videos_manga_plus_id"
    t.integer "_jeux_videos_jv_id"
    t.integer "_jeux_videos_jv_plus_id"
    t.integer "_jeux_videos_am_id"
    t.integer "_jeux_videos_am_plus_id"
    t.integer "_jeux_videos_drama_id"
    t.integer "_jeux_videos_drama_plus_id"
    t.integer "_jeux_videos_univers_id"
    t.integer "_jeux_videos_dvd_id"
    t.integer "_jeux_videos_artbook_id"
    t.integer "_jeux_videos_litterature_asiatique_id"
    t.integer "_jeux_videos_litterature_asiatique_plus_id"
    t.integer "_jeux_videos_culture_id"
    t.integer "_jeux_videos_ost_id"
    t.integer "_jeux_videos_cd_id"
    t.integer "_jeux_videos_doujin_id"
    t.integer "_jeux_videos_amv_id"
    t.integer "_jeux_videos_sondage_id"
    t.integer "_jeux_videos_quizz_id"
    t.integer "_jeux_videos_concours_id"
    t.integer "_jeux_videos_people_id"
    t.integer "_jeux_videos_topic_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_am_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_amvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_anime_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_artbooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_cds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_concours", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_doujins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_drama_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_dvds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_etats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_jv_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_litterature_asiatique_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_ln_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_manga_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_osts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_pays_dates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_plateformes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_quizzs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_sondages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_staff_societe_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_staff_societes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_topics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_jeux_videos_univers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels", force: :cascade do |t|
    t.string "titre"
    t.string "titre_alternatif"
    t.string "titre_alternatif_suite"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "image"
    t.string "image_vo"
    t.integer "_light_novels_pays_id"
    t.integer "_light_novels_genres_id"
    t.string "webcomic"
    t.integer "_light_novels_themes_id"
    t.string "annee_vo"
    t.string "annee_vf"
    t.string "nb_volumes_vo"
    t.string "nb_chapitres_vo"
    t.string "nb_volumes_vf"
    t.string "nb_chapitres_vf"
    t.integer "_light_novels_encours_vo_id"
    t.integer "_light_novels_encours_vf_id"
    t.integer "_light_novels_editeurs_vo_id"
    t.integer "_light_novels_editeurs_vf_id"
    t.integer "_light_novels_editeurs_vf_collection_id"
    t.integer "_light_novels_prepublie_id"
    t.integer "_light_novels_staff_role_id"
    t.integer "_light_novels_staff_people_id"
    t.integer "_light_novels_societe_role_id"
    t.integer "_light_novels_societe_people_id"
    t.string "age"
    t.integer "_light_novels_public_averti_id"
    t.integer "_light_novels_commerce_id"
    t.string "adapte_anime"
    t.string "prix"
    t.text "resume"
    t.integer "_light_novels_groupes_id"
    t.integer "_light_novels_anime_id"
    t.integer "_light_novels_anime_plus_id"
    t.integer "_light_novels_manga_id"
    t.integer "_light_novels_manga_plus_id"
    t.integer "_light_novels_ln_id"
    t.integer "_light_novels_ln_plus_id"
    t.integer "_light_novels_drama_id"
    t.integer "_light_novels_drama_plus_id"
    t.integer "_light_novels_jv_id"
    t.integer "_light_novels_jv_plus_id"
    t.integer "_light_novels_am_id"
    t.integer "_light_novels_am_plus_id"
    t.integer "_light_novels_litterature_asiatique_id"
    t.integer "_light_novels_litterature_asiatique_plus_id"
    t.integer "_light_novels_ost_id"
    t.integer "_light_novels_artbook_id"
    t.integer "_light_novels_actualite_id"
    t.integer "_light_novels_culture_id"
    t.integer "_light_novels_actualite_mini_id"
    t.integer "_light_novels_quizz_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_am_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_anime_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_artbooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_commerces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_drama_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_editeurs_vf_collections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_editeurs_vfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_editeurs_vos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_encours_vfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_encours_vos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_jv_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_litterature_asiatique_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_ln_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_manga_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_osts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_prepublies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_public_avertis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_quizzs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_societe_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_societe_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_light_novels_themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres", force: :cascade do |t|
    t.integer "_livres_type_id"
    t.integer "_livres_type_secondaire_id"
    t.string "titre"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "image"
    t.string "date_parution_vo_jj"
    t.string "date_parution_vo_mm"
    t.string "date_parution_vo_aaaa"
    t.string "date_parution_vf_jj"
    t.string "date_parution_vf_mm"
    t.string "date_parution_vf_aaaa"
    t.integer "_livres_pays_id"
    t.string "ean"
    t.string "pages"
    t.string "prix"
    t.string "gratuit"
    t.string "age"
    t.integer "_livres_statut_publication_id"
    t.integer "_livres_staff_role_id"
    t.integer "_livres_staff_people_id"
    t.integer "_livres_editeurs_vo_id"
    t.integer "_livres_editeurs_vf_id"
    t.string "collection"
    t.string "traducteur"
    t.integer "_livres_genres_id"
    t.integer "_livres_themes_id"
    t.integer "_livres_pays_theme_id"
    t.integer "_livres_public_averti_id"
    t.text "resume"
    t.string "preview"
    t.integer "_livres_groupes_id"
    t.integer "_livres_anime_id"
    t.integer "_livres_anime_plus_id"
    t.integer "_livres_ln_id"
    t.integer "_livres_ln_plus_id"
    t.integer "_livres_manga_id"
    t.integer "_livres_manga_plus_id"
    t.integer "_livres_drama_id"
    t.integer "_livres_drama_plus_id"
    t.integer "_livres_am_id"
    t.integer "_livres_am_plus_id"
    t.integer "_livres_litterature_asiatique_id"
    t.integer "_livres_litterature_asiatique_plus_id"
    t.integer "_livres_goodies_id"
    t.integer "_livres_actualite_id"
    t.integer "_livres_culture_id"
    t.integer "_livres_actualite_mini_id"
    t.integer "_livres_people_id"
    t.integer "_livres_jv_id"
    t.integer "_livres_jv_plus_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_am_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_anime_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_drama_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_editeurs_vfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_editeurs_vos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_goodies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_jv_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_litterature_asiatique_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_ln_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_manga_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_pays_themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_public_avertis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_statut_publications", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_type_secondaires", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_livres_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas", force: :cascade do |t|
    t.string "titre"
    t.string "titre_alternatif"
    t.string "titre_alternatif_suite"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "image"
    t.string "image_vo"
    t.integer "_mangas_pays_id"
    t.integer "_mangas_type_id"
    t.string "webcomic"
    t.integer "_mangas_genres_id"
    t.integer "_mangas_themes_id"
    t.string "annee_vo"
    t.string "annee_vf"
    t.string "annee_defaut"
    t.string "nb_volumes_vo"
    t.string "nb_chapitres_vo"
    t.string "nb_volumes_vf"
    t.string "nb_chapitres_vf"
    t.integer "_mangas_encours_vo_id"
    t.integer "_mangas_encours_vf_id"
    t.integer "_mangas_editeurs_vo_id"
    t.integer "_mangas_editeurs_vf_id"
    t.integer "_mangas_editeurs_vf_collection_id"
    t.integer "_mangas_prepublie_id"
    t.integer "_mangas_staff_role_id"
    t.integer "_mangas_staff_people_id"
    t.integer "_mangas_societe_role_id"
    t.integer "_mangas_societe_people_id"
    t.string "age"
    t.integer "_mangas_public_averti_id"
    t.integer "_mangas_commerce_id"
    t.string "adapte_anime"
    t.string "prix"
    t.text "resume"
    t.text "infos"
    t.string "youtube"
    t.integer "_mangas_groupes_id"
    t.integer "_mangas_anime_id"
    t.integer "_mangas_anime_plus_id"
    t.integer "_mangas_ln_id"
    t.integer "_mangas_ln_plus_id"
    t.integer "_mangas_manga_id"
    t.integer "_mangas_manga_plus_id"
    t.integer "_mangas_drama_id"
    t.integer "_mangas_drama_plus_id"
    t.integer "_mangas_jv_id"
    t.integer "_mangas_jv_plus_id"
    t.integer "_mangas_am_id"
    t.integer "_mangas_am_plus_id"
    t.integer "_mangas_litterature_asiatique_id"
    t.integer "_mangas_litterature_asiatique_plus_id"
    t.integer "_mangas_artbook_id"
    t.integer "_mangas_actualite_id"
    t.integer "_mangas_culture_id"
    t.integer "_mangas_actualite_mini_id"
    t.integer "_mangas_sondage_id"
    t.integer "_mangas_quizz_id"
    t.integer "_mangas_concours_id"
    t.integer "_mangas_people_id"
    t.integer "_mangas_clip_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_am_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_anime_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_artbooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_clips", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_commerces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_concours", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_drama_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_editeurs_vf_collections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_editeurs_vfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_editeurs_vos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_encours_vfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_encours_vos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_jv_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_litterature_asiatique_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_ln_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_manga_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_prepublies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_public_avertis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_quizzs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_societe_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_societe_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_sondages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_mangas_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_numero_demission_tvs", force: :cascade do |t|
    t.integer "_numero_demission_tvs_id_emission_tv_id"
    t.string "titre"
    t.string "titre_original"
    t.string "date_jj"
    t.string "date_mm"
    t.string "date_aaaa"
    t.integer "_numero_demission_tvs_special_id"
    t.string "duree"
    t.integer "_numero_demission_tvs_presentateur_id"
    t.integer "_numero_demission_tvs_people_id"
    t.string "image"
    t.text "infos"
    t.string "youtube"
    t.integer "_numero_demission_tvs_emission_tv_numero_id"
    t.integer "_numero_demission_tvs_clip_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_numero_demission_tvs_clips", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_numero_demission_tvs_emission_tv_numeros", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_numero_demission_tvs_id_emission_tvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_numero_demission_tvs_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_numero_demission_tvs_presentateurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_numero_demission_tvs_specials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_paroles", force: :cascade do |t|
    t.string "titre"
    t.string "titre_original"
    t.string "titre_alternatif"
    t.string "titre_original_latin"
    t.integer "_paroles_staff_role_id"
    t.integer "_paroles_staff_people_id"
    t.text "paroles"
    t.text "paroles_trad"
    t.string "membre_show"
    t.string "source"
    t.text "description"
    t.string "instrumental"
    t.integer "_paroles_parole_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_paroles_paroles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_paroles_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_paroles_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_danimes", force: :cascade do |t|
    t.string "nom"
    t.string "nom_alternatif"
    t.string "nom_suite"
    t.string "nom_original"
    t.integer "_personnage_danimes_sexe_id"
    t.integer "_personnage_danimes_anime_id"
    t.integer "_personnage_danimes_doubleur_pays_id"
    t.integer "_personnage_danimes_doubleur_people_id"
    t.integer "_personnage_danimes_doubleur_role_id"
    t.string "special"
    t.string "image"
    t.text "description"
    t.integer "_personnage_danimes_perso_id"
    t.integer "_personnage_danimes_perso_plus_id"
    t.integer "_personnage_danimes_perso_manga_id"
    t.integer "_personnage_danimes_jv_perso_id"
    t.integer "_personnage_danimes_goodies_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_danimes_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_danimes_doubleur_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_danimes_doubleur_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_danimes_doubleur_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_danimes_goodies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_danimes_jv_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_danimes_perso_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_danimes_perso_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_danimes_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_danimes_sexes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_de_mangas", force: :cascade do |t|
    t.string "nom"
    t.string "nom_alternatif"
    t.string "nom_suite"
    t.string "nom_original"
    t.integer "_personnage_de_mangas_manga_id"
    t.string "image"
    t.text "description"
    t.integer "_personnage_de_mangas_perso_manga_id"
    t.integer "_personnage_de_mangas_perso_id"
    t.integer "_personnage_de_mangas_perso_plus_id"
    t.integer "_personnage_de_mangas_jv_perso_id"
    t.integer "_personnage_de_mangas_goodies_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_de_mangas_goodies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_de_mangas_jv_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_de_mangas_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_de_mangas_perso_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_de_mangas_perso_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnage_de_mangas_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnages_de_jeux_videos", force: :cascade do |t|
    t.string "nom"
    t.string "nom_alternatif"
    t.string "nom_suite"
    t.string "nom_original"
    t.integer "_personnages_de_jeux_videos_jv_id"
    t.string "jouable"
    t.string "muet"
    t.integer "_personnages_de_jeux_videos_doubleur_pays_id"
    t.integer "_personnages_de_jeux_videos_doubleur_people_id"
    t.integer "_personnages_de_jeux_videos_doubleur_role_id"
    t.integer "_personnages_de_jeux_videos_jv_perso_id"
    t.integer "_personnages_de_jeux_videos_perso_id"
    t.integer "_personnages_de_jeux_videos_perso_plus_id"
    t.integer "_personnages_de_jeux_videos_perso_manga_id"
    t.integer "_personnages_de_jeux_videos_goodies_id"
    t.string "image"
    t.text "description"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnages_de_jeux_videos_doubleur_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnages_de_jeux_videos_doubleur_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnages_de_jeux_videos_doubleur_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnages_de_jeux_videos_goodies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnages_de_jeux_videos_jv_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnages_de_jeux_videos_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnages_de_jeux_videos_perso_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnages_de_jeux_videos_perso_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnages_de_jeux_videos_persos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites", force: :cascade do |t|
    t.string "nom"
    t.string "nom_alternatif"
    t.string "nom_alternatif_suite"
    t.string "nom_original_latin"
    t.string "nom_original"
    t.string "nom_original_2"
    t.string "nom_original_3"
    t.string "nom_original_4"
    t.integer "_personnalites_type_people_id"
    t.integer "_personnalites_sexe_id"
    t.integer "_personnalites_pays_id"
    t.string "decede"
    t.string "date_nais_jj"
    t.string "date_nais_mm"
    t.string "date_nais_aaaa"
    t.string "date_deces_jj"
    t.string "date_deces_mm"
    t.string "date_deces_aaaa"
    t.string "image"
    t.integer "_personnalites_statut_id"
    t.string "debut"
    t.string "fin"
    t.integer "_personnalites_genres_id"
    t.integer "_personnalites_labels_id"
    t.integer "_personnalites_labels_debut_id"
    t.integer "_personnalites_labels_fin_id"
    t.integer "_personnalites_labels_ex_id"
    t.integer "_personnalites_agences_id"
    t.integer "_personnalites_agences_debut_id"
    t.integer "_personnalites_agences_fin_id"
    t.integer "_personnalites_agences_ex_id"
    t.integer "_personnalites_roles_id"
    t.integer "_personnalites_id_membre_id"
    t.integer "_personnalites_ex_id"
    t.integer "_personnalites_ex_debut_id"
    t.integer "_personnalites_ex_fin_id"
    t.text "bio"
    t.integer "_personnalites_id_galerie_id"
    t.string "liaison_auto_galerie"
    t.integer "_personnalites_id_travaux_id"
    t.string "liaison_auto_cosplay"
    t.integer "_personnalites_people_id"
    t.integer "_personnalites_people_plus_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_agences", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_agences_debuts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_agences_exes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_agences_fins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_ex_debuts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_ex_fins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_exes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_id_galeries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_id_membres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_id_travauxes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_labels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_labels_debuts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_labels_exes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_labels_fins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_people_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_sexes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_statuts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_personnalites_type_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_petites_annonces", force: :cascade do |t|
    t.string "type"
    t.string "titre"
    t.string "image"
    t.integer "_petites_annonces_section_id"
    t.string "etat_produit"
    t.integer "_petites_annonces_pays_id"
    t.integer "_petites_annonces_lieu_id"
    t.string "prix"
    t.text "description"
    t.string "statut"
    t.text "comment"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_petites_annonces_lieus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_petites_annonces_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_petites_annonces_sections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks", force: :cascade do |t|
    t.integer "_photobooks_france_id"
    t.integer "_photobooks_pays_id"
    t.string "titre"
    t.string "titre_alternatif"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "image"
    t.string "image_vo"
    t.string "date_parution_vo_jj"
    t.string "date_parution_vo_mm"
    t.string "date_parution_vo_aaaa"
    t.string "date_parution_vf_jj"
    t.string "date_parution_vf_mm"
    t.string "date_parution_vf_aaaa"
    t.string "prix"
    t.string "ean"
    t.string "ref"
    t.integer "_photobooks_disponibilite_id"
    t.string "nb_pages"
    t.string "site"
    t.integer "_photobooks_illustrations_id"
    t.integer "_photobooks_type_id"
    t.integer "_photobooks_editeurs_vo_id"
    t.integer "_photobooks_editeurs_vf_id"
    t.integer "_photobooks_role_id"
    t.integer "_photobooks_people_id"
    t.integer "_photobooks_societe_role_id"
    t.integer "_photobooks_societe_people_id"
    t.text "resume"
    t.text "infos"
    t.integer "_photobooks_public_averti_id"
    t.integer "_photobooks_groupes_id"
    t.integer "_photobooks_drama_id"
    t.integer "_photobooks_am_id"
    t.integer "_photobooks_cd_id"
    t.integer "_photobooks_photobook_id"
    t.integer "_photobooks_anime_id"
    t.integer "_photobooks_bonus_id"
    t.integer "_photobooks_actualite_id"
    t.integer "_photobooks_actualite_mini_id"
    t.integer "_photobooks_goodies_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_bonus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_cds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_disponibilites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_editeurs_vfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_editeurs_vos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_frances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_goodies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_illustrations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_photobooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_public_avertis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_societe_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_societe_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_photobooks_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_recettes", force: :cascade do |t|
    t.string "nom"
    t.integer "_recettes_type_id"
    t.string "image"
    t.string "preparation"
    t.string "cuisson"
    t.string "nb_pers"
    t.integer "_recettes_plat_id"
    t.integer "_recettes_difficulte_id"
    t.text "ingredients"
    t.text "texte"
    t.string "source"
    t.text "comment"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_recettes_difficultes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_recettes_plats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_recettes_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_restaurants", force: :cascade do |t|
    t.string "nom"
    t.string "image"
    t.text "adresse"
    t.string "tel"
    t.text "description"
    t.string "dept"
    t.string "ville"
    t.integer "_restaurants_pays_id"
    t.text "horaires"
    t.string "creation"
    t.string "site"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_restaurants_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_sites_dachats", force: :cascade do |t|
    t.string "nom"
    t.string "url"
    t.text "description"
    t.integer "_sites_dachats_pays_id"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_sites_dachats_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_tablatures", force: :cascade do |t|
    t.string "titre"
    t.integer "_tablatures_people_id"
    t.text "infos"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_tablatures_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_videos", force: :cascade do |t|
    t.string "titre"
    t.integer "_videos_id_cat_id"
    t.string "url"
    t.string "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_videos_id_cats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_volumes", force: :cascade do |t|
    t.integer "_volumes_ln_id"
    t.string "numero"
    t.integer "_volumes_type_id"
    t.string "numerique"
    t.string "image"
    t.string "image_nc"
    t.string "image_vo"
    t.string "image_vo2"
    t.string "date_parution_vo_jj"
    t.string "date_parution_vo_mm"
    t.string "date_parution_vo_aaaa"
    t.string "date_parution_vf_jj"
    t.string "date_parution_vf_mm"
    t.string "date_parution_vf_aaaa"
    t.string "prix"
    t.string "prix_vo"
    t.string "pages"
    t.integer "_volumes_illustrations_id"
    t.string "ean"
    t.string "relie"
    t.string "sous_jaquette"
    t.text "resume"
    t.text "chapitres"
    t.text "infos"
    t.string "preview"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_volumes_illustrations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_volumes_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_volumes_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "_volumes_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amvs", force: :cascade do |t|
    t.string "titre"
    t.string "image"
    t.integer "amvs_makers_id"
    t.string "youtube"
    t.string "lien"
    t.text "song"
    t.string "date_jj"
    t.string "date_mm"
    t.string "date_aaaa"
    t.string "duree"
    t.integer "amvs_type_id"
    t.text "description"
    t.integer "amvs_conventions_id"
    t.integer "amvs_groupes_id"
    t.integer "amvs_anime_id"
    t.integer "amvs_jv_id"
    t.integer "amvs_amv_id"
    t.string "autre"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amvs_amvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amvs_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amvs_conventions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amvs_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amvs_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amvs_makers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amvs_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes", force: :cascade do |t|
    t.string "titre"
    t.string "titre_alternatif"
    t.string "titre_alternatif_suite"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "image"
    t.integer "animes_format_id"
    t.integer "animes_origine_id"
    t.string "webanime"
    t.integer "animes_encours_id"
    t.string "date_debut_jj"
    t.string "date_debut_mm"
    t.string "date_debut_aaaa"
    t.string "date_fin_jj"
    t.string "date_fin_mm"
    t.string "date_fin_aaaa"
    t.integer "animes_pays_id"
    t.integer "animes_genres_id"
    t.integer "animes_themes_id"
    t.integer "animes_staff_role_id"
    t.integer "animes_staff_people_id"
    t.integer "animes_societe_role_id"
    t.integer "animes_societe_people_id"
    t.integer "animes_public_averti_id"
    t.string "age"
    t.string "nb_ep"
    t.string "total_ep_inconnu"
    t.string "duree"
    t.string "licencie"
    t.integer "animes_editeurs_vf_role_id"
    t.integer "animes_editeurs_vf_id"
    t.string "date_debut_simulcast_jj"
    t.string "date_debut_simulcast_mm"
    t.string "date_debut_simulcast_aaaa"
    t.string "date_vf_jj"
    t.string "date_vf_mm"
    t.string "date_vf_aaaa"
    t.string "image_francaise"
    t.text "description"
    t.string "site"
    t.string "site2"
    t.string "youtube"
    t.integer "animes_groupes_id"
    t.integer "animes_actualite_id"
    t.integer "animes_actualite_mini_id"
    t.integer "animes_anime_id"
    t.integer "animes_anime_plus_id"
    t.integer "animes_ln_id"
    t.integer "animes_ln_plus_id"
    t.integer "animes_manga_id"
    t.integer "animes_manga_plus_id"
    t.integer "animes_jv_id"
    t.integer "animes_jv_plus_id"
    t.integer "animes_am_id"
    t.integer "animes_am_plus_id"
    t.integer "animes_drama_id"
    t.integer "animes_drama_plus_id"
    t.integer "animes_people_id"
    t.integer "animes_dvd_id"
    t.integer "animes_artbook_id"
    t.integer "animes_photobook_id"
    t.integer "animes_litterature_asiatique_id"
    t.integer "animes_litterature_asiatique_plus_id"
    t.integer "animes_culture_id"
    t.integer "animes_ost_id"
    t.integer "animes_cd_id"
    t.integer "animes_doujin_id"
    t.integer "animes_amv_id"
    t.integer "animes_cinema_id"
    t.integer "animes_quizz_id"
    t.integer "animes_topic_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_am_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_amvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_anime_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_artbooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_cds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_cinemas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_doujins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_drama_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_dvds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_editeurs_vf_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_editeurs_vfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_encours", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_formats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_jv_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_litterature_asiatique_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_ln_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_manga_plus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_origines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_osts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_photobooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_public_avertis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_quizzs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_societe_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_societe_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_staff_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_staff_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes_topics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks", force: :cascade do |t|
    t.integer "artbooks_france_id"
    t.integer "artbooks_pays_id"
    t.string "titre"
    t.string "titre_alternatif"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "image"
    t.string "image_vo"
    t.string "date_parution_vo_jj"
    t.string "date_parution_vo_mm"
    t.string "date_parution_vo_aaaa"
    t.string "date_parution_vf_jj"
    t.string "date_parution_vf_mm"
    t.string "date_parution_vf_aaaa"
    t.string "prix"
    t.string "ean"
    t.string "nb_pages"
    t.integer "artbooks_illustrations_id"
    t.integer "artbooks_type_id"
    t.string "crossover"
    t.integer "artbooks_editeurs_vo_id"
    t.integer "artbooks_editeurs_vf_id"
    t.integer "artbooks_role_id"
    t.integer "artbooks_people_id"
    t.integer "artbooks_societe_role_id"
    t.integer "artbooks_societe_people_id"
    t.text "resume"
    t.text "infos"
    t.integer "artbooks_public_averti_id"
    t.integer "artbooks_groupes_id"
    t.integer "artbooks_anime_id"
    t.integer "artbooks_manga_id"
    t.integer "artbooks_ln_id"
    t.integer "artbooks_doujinshi_id"
    t.integer "artbooks_jv_id"
    t.integer "artbooks_drama_id"
    t.integer "artbooks_am_id"
    t.integer "artbooks_litterature_asiatique_id"
    t.integer "artbooks_artbook_id"
    t.integer "artbooks_goodies_id"
    t.integer "artbooks_doujin_id"
    t.integer "artbooks_actualite_id"
    t.integer "artbooks_actualite_mini_id"
    t.integer "artbooks_culture_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_actualite_minis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_actualites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_artbooks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_doujins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_doujinshis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_editeurs_vfs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_editeurs_vos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_frances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_goodies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_illustrations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_litterature_asiatiques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_mangas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_public_avertis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_societe_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_societe_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artbooks_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evenements", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.string "date"
    t.string "date_fin"
    t.string "heure"
    t.string "prix"
    t.string "ville"
    t.string "lieu"
    t.string "adresse"
    t.integer "evenements_pays_id"
    t.string "lien"
    t.string "site"
    t.integer "evenements_people_id"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evenements_pays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evenements_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts", force: :cascade do |t|
    t.string "titre"
    t.string "titre_original_latin"
    t.string "titre_original"
    t.string "titre_us"
    t.string "titre_alternatif"
    t.integer "osts_type_id"
    t.integer "osts_plateforme_id"
    t.string "ref"
    t.string "date_jj"
    t.string "date_mm"
    t.string "date_aaaa"
    t.string "prix"
    t.integer "osts_monnaie_id"
    t.string "bonus_cd"
    t.integer "osts_role_id"
    t.integer "osts_people_id"
    t.string "image"
    t.string "sametracklist"
    t.integer "osts_labels_id"
    t.integer "osts_distributeurs_id"
    t.text "infos"
    t.integer "osts_groupes_id"
    t.integer "osts_anime_id"
    t.integer "osts_ln_id"
    t.integer "osts_drama_id"
    t.integer "osts_am_id"
    t.integer "osts_jv_id"
    t.integer "osts_ost_id"
    t.integer "osts_emission_tv_id"
    t.text "comment"
    t.string "statut_prop"
    t.string "acceptregles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_ams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_animes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_distributeurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_dramas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_emission_tvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_groupes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_jvs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_labels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_lns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_monnaies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_osts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_plateformes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osts_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "message"
    t.boolean "newsletter"
    t.string "siteweb"
    t.string "pseudonyme"
    t.boolean "affichersex"
    t.string "sex"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
