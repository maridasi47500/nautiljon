require "application_system_test_case"

class AnimesTest < ApplicationSystemTestCase
  setup do
    @anime = animes(:one)
  end

  test "visiting the index" do
    visit animes_url
    assert_selector "h1", text: "Animes"
  end

  test "should create anime" do
    visit animes_url
    click_on "New anime"

    fill_in "Acceptregles", with: @anime.acceptregles
    fill_in "Age", with: @anime.age
    fill_in "Animes actualite", with: @anime.animes_actualite_id
    fill_in "Animes actualite mini", with: @anime.animes_actualite_mini_id
    fill_in "Animes am", with: @anime.animes_am_id
    fill_in "Animes am plus", with: @anime.animes_am_plus_id
    fill_in "Animes amv", with: @anime.animes_amv_id
    fill_in "Animes anime", with: @anime.animes_anime_id
    fill_in "Animes anime plus", with: @anime.animes_anime_plus_id
    fill_in "Animes artbook", with: @anime.animes_artbook_id
    fill_in "Animes cd", with: @anime.animes_cd_id
    fill_in "Animes cinema", with: @anime.animes_cinema_id
    fill_in "Animes culture", with: @anime.animes_culture_id
    fill_in "Animes doujin", with: @anime.animes_doujin_id
    fill_in "Animes drama", with: @anime.animes_drama_id
    fill_in "Animes drama plus", with: @anime.animes_drama_plus_id
    fill_in "Animes dvd", with: @anime.animes_dvd_id
    fill_in "Animes editeurs vf", with: @anime.animes_editeurs_vf_id
    fill_in "Animes editeurs vf role", with: @anime.animes_editeurs_vf_role_id
    fill_in "Animes encours", with: @anime.animes_encours_id
    fill_in "Animes format", with: @anime.animes_format_id
    fill_in "Animes genres", with: @anime.animes_genres_id
    fill_in "Animes groupes", with: @anime.animes_groupes_id
    fill_in "Animes jv", with: @anime.animes_jv_id
    fill_in "Animes jv plus", with: @anime.animes_jv_plus_id
    fill_in "Animes litterature asiatique", with: @anime.animes_litterature_asiatique_id
    fill_in "Animes litterature asiatique plus", with: @anime.animes_litterature_asiatique_plus_id
    fill_in "Animes ln", with: @anime.animes_ln_id
    fill_in "Animes ln plus", with: @anime.animes_ln_plus_id
    fill_in "Animes manga", with: @anime.animes_manga_id
    fill_in "Animes manga plus", with: @anime.animes_manga_plus_id
    fill_in "Animes origine", with: @anime.animes_origine_id
    fill_in "Animes ost", with: @anime.animes_ost_id
    fill_in "Animes pays", with: @anime.animes_pays_id
    fill_in "Animes people", with: @anime.animes_people_id
    fill_in "Animes photobook", with: @anime.animes_photobook_id
    fill_in "Animes public averti", with: @anime.animes_public_averti_id
    fill_in "Animes quizz", with: @anime.animes_quizz_id
    fill_in "Animes societe people", with: @anime.animes_societe_people_id
    fill_in "Animes societe role", with: @anime.animes_societe_role_id
    fill_in "Animes staff people", with: @anime.animes_staff_people_id
    fill_in "Animes staff role", with: @anime.animes_staff_role_id
    fill_in "Animes themes", with: @anime.animes_themes_id
    fill_in "Animes topic", with: @anime.animes_topic_id
    fill_in "Comment", with: @anime.comment
    fill_in "Date debut aaaa", with: @anime.date_debut_aaaa
    fill_in "Date debut jj", with: @anime.date_debut_jj
    fill_in "Date debut mm", with: @anime.date_debut_mm
    fill_in "Date debut simulcast aaaa", with: @anime.date_debut_simulcast_aaaa
    fill_in "Date debut simulcast jj", with: @anime.date_debut_simulcast_jj
    fill_in "Date debut simulcast mm", with: @anime.date_debut_simulcast_mm
    fill_in "Date fin aaaa", with: @anime.date_fin_aaaa
    fill_in "Date fin jj", with: @anime.date_fin_jj
    fill_in "Date fin mm", with: @anime.date_fin_mm
    fill_in "Date vf aaaa", with: @anime.date_vf_aaaa
    fill_in "Date vf jj", with: @anime.date_vf_jj
    fill_in "Date vf mm", with: @anime.date_vf_mm
    fill_in "Description", with: @anime.description
    fill_in "Duree", with: @anime.duree
    fill_in "Image", with: @anime.image
    fill_in "Image francaise", with: @anime.image_francaise
    fill_in "Licencie", with: @anime.licencie
    fill_in "Nb ep", with: @anime.nb_ep
    fill_in "Site", with: @anime.site
    fill_in "Site2", with: @anime.site2
    fill_in "Statut prop", with: @anime.statut_prop
    fill_in "Titre", with: @anime.titre
    fill_in "Titre alternatif", with: @anime.titre_alternatif
    fill_in "Titre alternatif suite", with: @anime.titre_alternatif_suite
    fill_in "Titre original", with: @anime.titre_original
    fill_in "Titre original latin", with: @anime.titre_original_latin
    fill_in "Total ep inconnu", with: @anime.total_ep_inconnu
    fill_in "Webanime", with: @anime.webanime
    fill_in "Youtube", with: @anime.youtube
    click_on "Create Anime"

    assert_text "Anime was successfully created"
    click_on "Back"
  end

  test "should update Anime" do
    visit anime_url(@anime)
    click_on "Edit this anime", match: :first

    fill_in "Acceptregles", with: @anime.acceptregles
    fill_in "Age", with: @anime.age
    fill_in "Animes actualite", with: @anime.animes_actualite_id
    fill_in "Animes actualite mini", with: @anime.animes_actualite_mini_id
    fill_in "Animes am", with: @anime.animes_am_id
    fill_in "Animes am plus", with: @anime.animes_am_plus_id
    fill_in "Animes amv", with: @anime.animes_amv_id
    fill_in "Animes anime", with: @anime.animes_anime_id
    fill_in "Animes anime plus", with: @anime.animes_anime_plus_id
    fill_in "Animes artbook", with: @anime.animes_artbook_id
    fill_in "Animes cd", with: @anime.animes_cd_id
    fill_in "Animes cinema", with: @anime.animes_cinema_id
    fill_in "Animes culture", with: @anime.animes_culture_id
    fill_in "Animes doujin", with: @anime.animes_doujin_id
    fill_in "Animes drama", with: @anime.animes_drama_id
    fill_in "Animes drama plus", with: @anime.animes_drama_plus_id
    fill_in "Animes dvd", with: @anime.animes_dvd_id
    fill_in "Animes editeurs vf", with: @anime.animes_editeurs_vf_id
    fill_in "Animes editeurs vf role", with: @anime.animes_editeurs_vf_role_id
    fill_in "Animes encours", with: @anime.animes_encours_id
    fill_in "Animes format", with: @anime.animes_format_id
    fill_in "Animes genres", with: @anime.animes_genres_id
    fill_in "Animes groupes", with: @anime.animes_groupes_id
    fill_in "Animes jv", with: @anime.animes_jv_id
    fill_in "Animes jv plus", with: @anime.animes_jv_plus_id
    fill_in "Animes litterature asiatique", with: @anime.animes_litterature_asiatique_id
    fill_in "Animes litterature asiatique plus", with: @anime.animes_litterature_asiatique_plus_id
    fill_in "Animes ln", with: @anime.animes_ln_id
    fill_in "Animes ln plus", with: @anime.animes_ln_plus_id
    fill_in "Animes manga", with: @anime.animes_manga_id
    fill_in "Animes manga plus", with: @anime.animes_manga_plus_id
    fill_in "Animes origine", with: @anime.animes_origine_id
    fill_in "Animes ost", with: @anime.animes_ost_id
    fill_in "Animes pays", with: @anime.animes_pays_id
    fill_in "Animes people", with: @anime.animes_people_id
    fill_in "Animes photobook", with: @anime.animes_photobook_id
    fill_in "Animes public averti", with: @anime.animes_public_averti_id
    fill_in "Animes quizz", with: @anime.animes_quizz_id
    fill_in "Animes societe people", with: @anime.animes_societe_people_id
    fill_in "Animes societe role", with: @anime.animes_societe_role_id
    fill_in "Animes staff people", with: @anime.animes_staff_people_id
    fill_in "Animes staff role", with: @anime.animes_staff_role_id
    fill_in "Animes themes", with: @anime.animes_themes_id
    fill_in "Animes topic", with: @anime.animes_topic_id
    fill_in "Comment", with: @anime.comment
    fill_in "Date debut aaaa", with: @anime.date_debut_aaaa
    fill_in "Date debut jj", with: @anime.date_debut_jj
    fill_in "Date debut mm", with: @anime.date_debut_mm
    fill_in "Date debut simulcast aaaa", with: @anime.date_debut_simulcast_aaaa
    fill_in "Date debut simulcast jj", with: @anime.date_debut_simulcast_jj
    fill_in "Date debut simulcast mm", with: @anime.date_debut_simulcast_mm
    fill_in "Date fin aaaa", with: @anime.date_fin_aaaa
    fill_in "Date fin jj", with: @anime.date_fin_jj
    fill_in "Date fin mm", with: @anime.date_fin_mm
    fill_in "Date vf aaaa", with: @anime.date_vf_aaaa
    fill_in "Date vf jj", with: @anime.date_vf_jj
    fill_in "Date vf mm", with: @anime.date_vf_mm
    fill_in "Description", with: @anime.description
    fill_in "Duree", with: @anime.duree
    fill_in "Image", with: @anime.image
    fill_in "Image francaise", with: @anime.image_francaise
    fill_in "Licencie", with: @anime.licencie
    fill_in "Nb ep", with: @anime.nb_ep
    fill_in "Site", with: @anime.site
    fill_in "Site2", with: @anime.site2
    fill_in "Statut prop", with: @anime.statut_prop
    fill_in "Titre", with: @anime.titre
    fill_in "Titre alternatif", with: @anime.titre_alternatif
    fill_in "Titre alternatif suite", with: @anime.titre_alternatif_suite
    fill_in "Titre original", with: @anime.titre_original
    fill_in "Titre original latin", with: @anime.titre_original_latin
    fill_in "Total ep inconnu", with: @anime.total_ep_inconnu
    fill_in "Webanime", with: @anime.webanime
    fill_in "Youtube", with: @anime.youtube
    click_on "Update Anime"

    assert_text "Anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Anime" do
    visit anime_url(@anime)
    click_on "Destroy this anime", match: :first

    assert_text "Anime was successfully destroyed"
  end
end
