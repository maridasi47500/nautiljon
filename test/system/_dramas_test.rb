require "application_system_test_case"

class DramasTest < ApplicationSystemTestCase
  setup do
    @_drama = _dramas(:one)
  end

  test "visiting the index" do
    visit _dramas_url
    assert_selector "h1", text: "Dramas"
  end

  test "should create drama" do
    visit _dramas_url
    click_on "New drama"

    fill_in "Dramas acteurs", with: @_drama._dramas_acteurs_id
    fill_in "Dramas actualite", with: @_drama._dramas_actualite_id
    fill_in "Dramas actualite mini", with: @_drama._dramas_actualite_mini_id
    fill_in "Dramas am", with: @_drama._dramas_am_id
    fill_in "Dramas am plus", with: @_drama._dramas_am_plus_id
    fill_in "Dramas anime", with: @_drama._dramas_anime_id
    fill_in "Dramas anime plus", with: @_drama._dramas_anime_plus_id
    fill_in "Dramas artbook", with: @_drama._dramas_artbook_id
    fill_in "Dramas cd", with: @_drama._dramas_cd_id
    fill_in "Dramas culture", with: @_drama._dramas_culture_id
    fill_in "Dramas doujin", with: @_drama._dramas_doujin_id
    fill_in "Dramas drama", with: @_drama._dramas_drama_id
    fill_in "Dramas drama plus", with: @_drama._dramas_drama_plus_id
    fill_in "Dramas dvd", with: @_drama._dramas_dvd_id
    fill_in "Dramas editeurs vf", with: @_drama._dramas_editeurs_vf_id
    fill_in "Dramas editeurs vf role", with: @_drama._dramas_editeurs_vf_role_id
    fill_in "Dramas emission tv", with: @_drama._dramas_emission_tv_id
    fill_in "Dramas emission tv plus", with: @_drama._dramas_emission_tv_plus_id
    fill_in "Dramas encours", with: @_drama._dramas_encours_id
    fill_in "Dramas generiques clip", with: @_drama._dramas_generiques_clip_id
    fill_in "Dramas generiques parole", with: @_drama._dramas_generiques_parole_id
    fill_in "Dramas generiques people2", with: @_drama._dramas_generiques_people2_id
    fill_in "Dramas generiques people", with: @_drama._dramas_generiques_people_id
    fill_in "Dramas generiques type", with: @_drama._dramas_generiques_type_id
    fill_in "Dramas genres", with: @_drama._dramas_genres_id
    fill_in "Dramas groupes", with: @_drama._dramas_groupes_id
    fill_in "Dramas jv", with: @_drama._dramas_jv_id
    fill_in "Dramas jv plus", with: @_drama._dramas_jv_plus_id
    fill_in "Dramas litterature asiatique", with: @_drama._dramas_litterature_asiatique_id
    fill_in "Dramas litterature asiatique plus", with: @_drama._dramas_litterature_asiatique_plus_id
    fill_in "Dramas ln", with: @_drama._dramas_ln_id
    fill_in "Dramas ln plus", with: @_drama._dramas_ln_plus_id
    fill_in "Dramas manga", with: @_drama._dramas_manga_id
    fill_in "Dramas manga plus", with: @_drama._dramas_manga_plus_id
    fill_in "Dramas origine", with: @_drama._dramas_origine_id
    fill_in "Dramas ost", with: @_drama._dramas_ost_id
    fill_in "Dramas pays", with: @_drama._dramas_pays_id
    fill_in "Dramas programme", with: @_drama._dramas_programme_id
    fill_in "Dramas societe people", with: @_drama._dramas_societe_people_id
    fill_in "Dramas societe role", with: @_drama._dramas_societe_role_id
    fill_in "Dramas staff people", with: @_drama._dramas_staff_people_id
    fill_in "Dramas staff role", with: @_drama._dramas_staff_role_id
    fill_in "Dramas themes", with: @_drama._dramas_themes_id
    fill_in "Dramas type", with: @_drama._dramas_type_id
    fill_in "Dramas univers", with: @_drama._dramas_univers_id
    fill_in "Acceptregles", with: @_drama.acceptregles
    fill_in "Age", with: @_drama.age
    fill_in "Comment", with: @_drama.comment
    fill_in "Date debut aaaa", with: @_drama.date_debut_aaaa
    fill_in "Date debut jj", with: @_drama.date_debut_jj
    fill_in "Date debut mm", with: @_drama.date_debut_mm
    fill_in "Date debut simulcast aaaa", with: @_drama.date_debut_simulcast_aaaa
    fill_in "Date debut simulcast jj", with: @_drama.date_debut_simulcast_jj
    fill_in "Date debut simulcast mm", with: @_drama.date_debut_simulcast_mm
    fill_in "Date fin aaaa", with: @_drama.date_fin_aaaa
    fill_in "Date fin jj", with: @_drama.date_fin_jj
    fill_in "Date fin mm", with: @_drama.date_fin_mm
    fill_in "Date vf aaaa", with: @_drama.date_vf_aaaa
    fill_in "Date vf jj", with: @_drama.date_vf_jj
    fill_in "Date vf mm", with: @_drama.date_vf_mm
    fill_in "Duree", with: @_drama.duree
    fill_in "Episodes", with: @_drama.episodes
    fill_in "Image", with: @_drama.image
    fill_in "Infos", with: @_drama.infos
    fill_in "Licencie", with: @_drama.licencie
    fill_in "Nb ep", with: @_drama.nb_ep
    fill_in "Site", with: @_drama.site
    fill_in "Site2", with: @_drama.site2
    fill_in "Statut prop", with: @_drama.statut_prop
    fill_in "Synopsis", with: @_drama.synopsis
    fill_in "Titre", with: @_drama.titre
    fill_in "Titre alternatif", with: @_drama.titre_alternatif
    fill_in "Titre alternatif suite", with: @_drama.titre_alternatif_suite
    fill_in "Titre original", with: @_drama.titre_original
    fill_in "Titre original latin", with: @_drama.titre_original_latin
    fill_in "Total ep inconnu", with: @_drama.total_ep_inconnu
    fill_in "Webdrama", with: @_drama.webdrama
    fill_in "Youtube", with: @_drama.youtube
    click_on "Create Drama"

    assert_text "Drama was successfully created"
    click_on "Back"
  end

  test "should update Drama" do
    visit _drama_url(@_drama)
    click_on "Edit this drama", match: :first

    fill_in "Dramas acteurs", with: @_drama._dramas_acteurs_id
    fill_in "Dramas actualite", with: @_drama._dramas_actualite_id
    fill_in "Dramas actualite mini", with: @_drama._dramas_actualite_mini_id
    fill_in "Dramas am", with: @_drama._dramas_am_id
    fill_in "Dramas am plus", with: @_drama._dramas_am_plus_id
    fill_in "Dramas anime", with: @_drama._dramas_anime_id
    fill_in "Dramas anime plus", with: @_drama._dramas_anime_plus_id
    fill_in "Dramas artbook", with: @_drama._dramas_artbook_id
    fill_in "Dramas cd", with: @_drama._dramas_cd_id
    fill_in "Dramas culture", with: @_drama._dramas_culture_id
    fill_in "Dramas doujin", with: @_drama._dramas_doujin_id
    fill_in "Dramas drama", with: @_drama._dramas_drama_id
    fill_in "Dramas drama plus", with: @_drama._dramas_drama_plus_id
    fill_in "Dramas dvd", with: @_drama._dramas_dvd_id
    fill_in "Dramas editeurs vf", with: @_drama._dramas_editeurs_vf_id
    fill_in "Dramas editeurs vf role", with: @_drama._dramas_editeurs_vf_role_id
    fill_in "Dramas emission tv", with: @_drama._dramas_emission_tv_id
    fill_in "Dramas emission tv plus", with: @_drama._dramas_emission_tv_plus_id
    fill_in "Dramas encours", with: @_drama._dramas_encours_id
    fill_in "Dramas generiques clip", with: @_drama._dramas_generiques_clip_id
    fill_in "Dramas generiques parole", with: @_drama._dramas_generiques_parole_id
    fill_in "Dramas generiques people2", with: @_drama._dramas_generiques_people2_id
    fill_in "Dramas generiques people", with: @_drama._dramas_generiques_people_id
    fill_in "Dramas generiques type", with: @_drama._dramas_generiques_type_id
    fill_in "Dramas genres", with: @_drama._dramas_genres_id
    fill_in "Dramas groupes", with: @_drama._dramas_groupes_id
    fill_in "Dramas jv", with: @_drama._dramas_jv_id
    fill_in "Dramas jv plus", with: @_drama._dramas_jv_plus_id
    fill_in "Dramas litterature asiatique", with: @_drama._dramas_litterature_asiatique_id
    fill_in "Dramas litterature asiatique plus", with: @_drama._dramas_litterature_asiatique_plus_id
    fill_in "Dramas ln", with: @_drama._dramas_ln_id
    fill_in "Dramas ln plus", with: @_drama._dramas_ln_plus_id
    fill_in "Dramas manga", with: @_drama._dramas_manga_id
    fill_in "Dramas manga plus", with: @_drama._dramas_manga_plus_id
    fill_in "Dramas origine", with: @_drama._dramas_origine_id
    fill_in "Dramas ost", with: @_drama._dramas_ost_id
    fill_in "Dramas pays", with: @_drama._dramas_pays_id
    fill_in "Dramas programme", with: @_drama._dramas_programme_id
    fill_in "Dramas societe people", with: @_drama._dramas_societe_people_id
    fill_in "Dramas societe role", with: @_drama._dramas_societe_role_id
    fill_in "Dramas staff people", with: @_drama._dramas_staff_people_id
    fill_in "Dramas staff role", with: @_drama._dramas_staff_role_id
    fill_in "Dramas themes", with: @_drama._dramas_themes_id
    fill_in "Dramas type", with: @_drama._dramas_type_id
    fill_in "Dramas univers", with: @_drama._dramas_univers_id
    fill_in "Acceptregles", with: @_drama.acceptregles
    fill_in "Age", with: @_drama.age
    fill_in "Comment", with: @_drama.comment
    fill_in "Date debut aaaa", with: @_drama.date_debut_aaaa
    fill_in "Date debut jj", with: @_drama.date_debut_jj
    fill_in "Date debut mm", with: @_drama.date_debut_mm
    fill_in "Date debut simulcast aaaa", with: @_drama.date_debut_simulcast_aaaa
    fill_in "Date debut simulcast jj", with: @_drama.date_debut_simulcast_jj
    fill_in "Date debut simulcast mm", with: @_drama.date_debut_simulcast_mm
    fill_in "Date fin aaaa", with: @_drama.date_fin_aaaa
    fill_in "Date fin jj", with: @_drama.date_fin_jj
    fill_in "Date fin mm", with: @_drama.date_fin_mm
    fill_in "Date vf aaaa", with: @_drama.date_vf_aaaa
    fill_in "Date vf jj", with: @_drama.date_vf_jj
    fill_in "Date vf mm", with: @_drama.date_vf_mm
    fill_in "Duree", with: @_drama.duree
    fill_in "Episodes", with: @_drama.episodes
    fill_in "Image", with: @_drama.image
    fill_in "Infos", with: @_drama.infos
    fill_in "Licencie", with: @_drama.licencie
    fill_in "Nb ep", with: @_drama.nb_ep
    fill_in "Site", with: @_drama.site
    fill_in "Site2", with: @_drama.site2
    fill_in "Statut prop", with: @_drama.statut_prop
    fill_in "Synopsis", with: @_drama.synopsis
    fill_in "Titre", with: @_drama.titre
    fill_in "Titre alternatif", with: @_drama.titre_alternatif
    fill_in "Titre alternatif suite", with: @_drama.titre_alternatif_suite
    fill_in "Titre original", with: @_drama.titre_original
    fill_in "Titre original latin", with: @_drama.titre_original_latin
    fill_in "Total ep inconnu", with: @_drama.total_ep_inconnu
    fill_in "Webdrama", with: @_drama.webdrama
    fill_in "Youtube", with: @_drama.youtube
    click_on "Update Drama"

    assert_text "Drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Drama" do
    visit _drama_url(@_drama)
    click_on "Destroy this drama", match: :first

    assert_text "Drama was successfully destroyed"
  end
end
