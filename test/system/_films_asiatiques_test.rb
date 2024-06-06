require "application_system_test_case"

class FilmsAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatique = _films_asiatiques(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_url
    assert_selector "h1", text: "Films asiatiques"
  end

  test "should create films asiatique" do
    visit _films_asiatiques_url
    click_on "New films asiatique"

    fill_in "Films asiatiques acteurs", with: @_films_asiatique._films_asiatiques_acteurs_id
    fill_in "Films asiatiques actualite", with: @_films_asiatique._films_asiatiques_actualite_id
    fill_in "Films asiatiques actualite mini", with: @_films_asiatique._films_asiatiques_actualite_mini_id
    fill_in "Films asiatiques am", with: @_films_asiatique._films_asiatiques_am_id
    fill_in "Films asiatiques am plus", with: @_films_asiatique._films_asiatiques_am_plus_id
    fill_in "Films asiatiques anime", with: @_films_asiatique._films_asiatiques_anime_id
    fill_in "Films asiatiques anime plus", with: @_films_asiatique._films_asiatiques_anime_plus_id
    fill_in "Films asiatiques artbook", with: @_films_asiatique._films_asiatiques_artbook_id
    fill_in "Films asiatiques cd", with: @_films_asiatique._films_asiatiques_cd_id
    fill_in "Films asiatiques cinema", with: @_films_asiatique._films_asiatiques_cinema_id
    fill_in "Films asiatiques concours", with: @_films_asiatique._films_asiatiques_concours_id
    fill_in "Films asiatiques culture", with: @_films_asiatique._films_asiatiques_culture_id
    fill_in "Films asiatiques doujin", with: @_films_asiatique._films_asiatiques_doujin_id
    fill_in "Films asiatiques drama", with: @_films_asiatique._films_asiatiques_drama_id
    fill_in "Films asiatiques drama plus", with: @_films_asiatique._films_asiatiques_drama_plus_id
    fill_in "Films asiatiques dvd", with: @_films_asiatique._films_asiatiques_dvd_id
    fill_in "Films asiatiques editeurs vf", with: @_films_asiatique._films_asiatiques_editeurs_vf_id
    fill_in "Films asiatiques editeurs vf role", with: @_films_asiatique._films_asiatiques_editeurs_vf_role_id
    fill_in "Films asiatiques emission tv", with: @_films_asiatique._films_asiatiques_emission_tv_id
    fill_in "Films asiatiques emission tv plus", with: @_films_asiatique._films_asiatiques_emission_tv_plus_id
    fill_in "Films asiatiques generiques clip", with: @_films_asiatique._films_asiatiques_generiques_clip_id
    fill_in "Films asiatiques generiques parole", with: @_films_asiatique._films_asiatiques_generiques_parole_id
    fill_in "Films asiatiques generiques people2", with: @_films_asiatique._films_asiatiques_generiques_people2_id
    fill_in "Films asiatiques generiques people", with: @_films_asiatique._films_asiatiques_generiques_people_id
    fill_in "Films asiatiques generiques type", with: @_films_asiatique._films_asiatiques_generiques_type_id
    fill_in "Films asiatiques genres", with: @_films_asiatique._films_asiatiques_genres_id
    fill_in "Films asiatiques groupes", with: @_films_asiatique._films_asiatiques_groupes_id
    fill_in "Films asiatiques jv", with: @_films_asiatique._films_asiatiques_jv_id
    fill_in "Films asiatiques jv plus", with: @_films_asiatique._films_asiatiques_jv_plus_id
    fill_in "Films asiatiques litterature asiatique", with: @_films_asiatique._films_asiatiques_litterature_asiatique_id
    fill_in "Films asiatiques litterature asiatique plus", with: @_films_asiatique._films_asiatiques_litterature_asiatique_plus_id
    fill_in "Films asiatiques ln", with: @_films_asiatique._films_asiatiques_ln_id
    fill_in "Films asiatiques ln plus", with: @_films_asiatique._films_asiatiques_ln_plus_id
    fill_in "Films asiatiques manga", with: @_films_asiatique._films_asiatiques_manga_id
    fill_in "Films asiatiques manga plus", with: @_films_asiatique._films_asiatiques_manga_plus_id
    fill_in "Films asiatiques origine", with: @_films_asiatique._films_asiatiques_origine_id
    fill_in "Films asiatiques ost", with: @_films_asiatique._films_asiatiques_ost_id
    fill_in "Films asiatiques pays", with: @_films_asiatique._films_asiatiques_pays_id
    fill_in "Films asiatiques people", with: @_films_asiatique._films_asiatiques_people_id
    fill_in "Films asiatiques quizz", with: @_films_asiatique._films_asiatiques_quizz_id
    fill_in "Films asiatiques societe people", with: @_films_asiatique._films_asiatiques_societe_people_id
    fill_in "Films asiatiques societe role", with: @_films_asiatique._films_asiatiques_societe_role_id
    fill_in "Films asiatiques sondage", with: @_films_asiatique._films_asiatiques_sondage_id
    fill_in "Films asiatiques staff people", with: @_films_asiatique._films_asiatiques_staff_people_id
    fill_in "Films asiatiques staff role", with: @_films_asiatique._films_asiatiques_staff_role_id
    fill_in "Films asiatiques themes", with: @_films_asiatique._films_asiatiques_themes_id
    fill_in "Films asiatiques type", with: @_films_asiatique._films_asiatiques_type_id
    fill_in "Films asiatiques univers", with: @_films_asiatique._films_asiatiques_univers_id
    fill_in "Acceptregles", with: @_films_asiatique.acceptregles
    fill_in "Age", with: @_films_asiatique.age
    fill_in "Comment", with: @_films_asiatique.comment
    fill_in "Date debut aaaa", with: @_films_asiatique.date_debut_aaaa
    fill_in "Date debut jj", with: @_films_asiatique.date_debut_jj
    fill_in "Date debut mm", with: @_films_asiatique.date_debut_mm
    fill_in "Date debut simulcast aaaa", with: @_films_asiatique.date_debut_simulcast_aaaa
    fill_in "Date debut simulcast jj", with: @_films_asiatique.date_debut_simulcast_jj
    fill_in "Date debut simulcast mm", with: @_films_asiatique.date_debut_simulcast_mm
    fill_in "Date vf aaaa", with: @_films_asiatique.date_vf_aaaa
    fill_in "Date vf jj", with: @_films_asiatique.date_vf_jj
    fill_in "Date vf mm", with: @_films_asiatique.date_vf_mm
    fill_in "Duree", with: @_films_asiatique.duree
    fill_in "Image", with: @_films_asiatique.image
    fill_in "Image francaise", with: @_films_asiatique.image_francaise
    fill_in "Image internationale", with: @_films_asiatique.image_internationale
    fill_in "Infos", with: @_films_asiatique.infos
    fill_in "Licencie", with: @_films_asiatique.licencie
    fill_in "Site", with: @_films_asiatique.site
    fill_in "Statut prop", with: @_films_asiatique.statut_prop
    fill_in "Synopsis", with: @_films_asiatique.synopsis
    fill_in "Titre", with: @_films_asiatique.titre
    fill_in "Titre alternatif", with: @_films_asiatique.titre_alternatif
    fill_in "Titre alternatif suite", with: @_films_asiatique.titre_alternatif_suite
    fill_in "Titre original", with: @_films_asiatique.titre_original
    fill_in "Titre original latin", with: @_films_asiatique.titre_original_latin
    fill_in "Youtube", with: @_films_asiatique.youtube
    click_on "Create Films asiatique"

    assert_text "Films asiatique was successfully created"
    click_on "Back"
  end

  test "should update Films asiatique" do
    visit _films_asiatique_url(@_films_asiatique)
    click_on "Edit this films asiatique", match: :first

    fill_in "Films asiatiques acteurs", with: @_films_asiatique._films_asiatiques_acteurs_id
    fill_in "Films asiatiques actualite", with: @_films_asiatique._films_asiatiques_actualite_id
    fill_in "Films asiatiques actualite mini", with: @_films_asiatique._films_asiatiques_actualite_mini_id
    fill_in "Films asiatiques am", with: @_films_asiatique._films_asiatiques_am_id
    fill_in "Films asiatiques am plus", with: @_films_asiatique._films_asiatiques_am_plus_id
    fill_in "Films asiatiques anime", with: @_films_asiatique._films_asiatiques_anime_id
    fill_in "Films asiatiques anime plus", with: @_films_asiatique._films_asiatiques_anime_plus_id
    fill_in "Films asiatiques artbook", with: @_films_asiatique._films_asiatiques_artbook_id
    fill_in "Films asiatiques cd", with: @_films_asiatique._films_asiatiques_cd_id
    fill_in "Films asiatiques cinema", with: @_films_asiatique._films_asiatiques_cinema_id
    fill_in "Films asiatiques concours", with: @_films_asiatique._films_asiatiques_concours_id
    fill_in "Films asiatiques culture", with: @_films_asiatique._films_asiatiques_culture_id
    fill_in "Films asiatiques doujin", with: @_films_asiatique._films_asiatiques_doujin_id
    fill_in "Films asiatiques drama", with: @_films_asiatique._films_asiatiques_drama_id
    fill_in "Films asiatiques drama plus", with: @_films_asiatique._films_asiatiques_drama_plus_id
    fill_in "Films asiatiques dvd", with: @_films_asiatique._films_asiatiques_dvd_id
    fill_in "Films asiatiques editeurs vf", with: @_films_asiatique._films_asiatiques_editeurs_vf_id
    fill_in "Films asiatiques editeurs vf role", with: @_films_asiatique._films_asiatiques_editeurs_vf_role_id
    fill_in "Films asiatiques emission tv", with: @_films_asiatique._films_asiatiques_emission_tv_id
    fill_in "Films asiatiques emission tv plus", with: @_films_asiatique._films_asiatiques_emission_tv_plus_id
    fill_in "Films asiatiques generiques clip", with: @_films_asiatique._films_asiatiques_generiques_clip_id
    fill_in "Films asiatiques generiques parole", with: @_films_asiatique._films_asiatiques_generiques_parole_id
    fill_in "Films asiatiques generiques people2", with: @_films_asiatique._films_asiatiques_generiques_people2_id
    fill_in "Films asiatiques generiques people", with: @_films_asiatique._films_asiatiques_generiques_people_id
    fill_in "Films asiatiques generiques type", with: @_films_asiatique._films_asiatiques_generiques_type_id
    fill_in "Films asiatiques genres", with: @_films_asiatique._films_asiatiques_genres_id
    fill_in "Films asiatiques groupes", with: @_films_asiatique._films_asiatiques_groupes_id
    fill_in "Films asiatiques jv", with: @_films_asiatique._films_asiatiques_jv_id
    fill_in "Films asiatiques jv plus", with: @_films_asiatique._films_asiatiques_jv_plus_id
    fill_in "Films asiatiques litterature asiatique", with: @_films_asiatique._films_asiatiques_litterature_asiatique_id
    fill_in "Films asiatiques litterature asiatique plus", with: @_films_asiatique._films_asiatiques_litterature_asiatique_plus_id
    fill_in "Films asiatiques ln", with: @_films_asiatique._films_asiatiques_ln_id
    fill_in "Films asiatiques ln plus", with: @_films_asiatique._films_asiatiques_ln_plus_id
    fill_in "Films asiatiques manga", with: @_films_asiatique._films_asiatiques_manga_id
    fill_in "Films asiatiques manga plus", with: @_films_asiatique._films_asiatiques_manga_plus_id
    fill_in "Films asiatiques origine", with: @_films_asiatique._films_asiatiques_origine_id
    fill_in "Films asiatiques ost", with: @_films_asiatique._films_asiatiques_ost_id
    fill_in "Films asiatiques pays", with: @_films_asiatique._films_asiatiques_pays_id
    fill_in "Films asiatiques people", with: @_films_asiatique._films_asiatiques_people_id
    fill_in "Films asiatiques quizz", with: @_films_asiatique._films_asiatiques_quizz_id
    fill_in "Films asiatiques societe people", with: @_films_asiatique._films_asiatiques_societe_people_id
    fill_in "Films asiatiques societe role", with: @_films_asiatique._films_asiatiques_societe_role_id
    fill_in "Films asiatiques sondage", with: @_films_asiatique._films_asiatiques_sondage_id
    fill_in "Films asiatiques staff people", with: @_films_asiatique._films_asiatiques_staff_people_id
    fill_in "Films asiatiques staff role", with: @_films_asiatique._films_asiatiques_staff_role_id
    fill_in "Films asiatiques themes", with: @_films_asiatique._films_asiatiques_themes_id
    fill_in "Films asiatiques type", with: @_films_asiatique._films_asiatiques_type_id
    fill_in "Films asiatiques univers", with: @_films_asiatique._films_asiatiques_univers_id
    fill_in "Acceptregles", with: @_films_asiatique.acceptregles
    fill_in "Age", with: @_films_asiatique.age
    fill_in "Comment", with: @_films_asiatique.comment
    fill_in "Date debut aaaa", with: @_films_asiatique.date_debut_aaaa
    fill_in "Date debut jj", with: @_films_asiatique.date_debut_jj
    fill_in "Date debut mm", with: @_films_asiatique.date_debut_mm
    fill_in "Date debut simulcast aaaa", with: @_films_asiatique.date_debut_simulcast_aaaa
    fill_in "Date debut simulcast jj", with: @_films_asiatique.date_debut_simulcast_jj
    fill_in "Date debut simulcast mm", with: @_films_asiatique.date_debut_simulcast_mm
    fill_in "Date vf aaaa", with: @_films_asiatique.date_vf_aaaa
    fill_in "Date vf jj", with: @_films_asiatique.date_vf_jj
    fill_in "Date vf mm", with: @_films_asiatique.date_vf_mm
    fill_in "Duree", with: @_films_asiatique.duree
    fill_in "Image", with: @_films_asiatique.image
    fill_in "Image francaise", with: @_films_asiatique.image_francaise
    fill_in "Image internationale", with: @_films_asiatique.image_internationale
    fill_in "Infos", with: @_films_asiatique.infos
    fill_in "Licencie", with: @_films_asiatique.licencie
    fill_in "Site", with: @_films_asiatique.site
    fill_in "Statut prop", with: @_films_asiatique.statut_prop
    fill_in "Synopsis", with: @_films_asiatique.synopsis
    fill_in "Titre", with: @_films_asiatique.titre
    fill_in "Titre alternatif", with: @_films_asiatique.titre_alternatif
    fill_in "Titre alternatif suite", with: @_films_asiatique.titre_alternatif_suite
    fill_in "Titre original", with: @_films_asiatique.titre_original
    fill_in "Titre original latin", with: @_films_asiatique.titre_original_latin
    fill_in "Youtube", with: @_films_asiatique.youtube
    click_on "Update Films asiatique"

    assert_text "Films asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatique" do
    visit _films_asiatique_url(@_films_asiatique)
    click_on "Destroy this films asiatique", match: :first

    assert_text "Films asiatique was successfully destroyed"
  end
end
