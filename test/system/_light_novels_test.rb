require "application_system_test_case"

class LightNovelsTest < ApplicationSystemTestCase
  setup do
    @_light_novel = _light_novels(:one)
  end

  test "visiting the index" do
    visit _light_novels_url
    assert_selector "h1", text: "Light novels"
  end

  test "should create light novel" do
    visit _light_novels_url
    click_on "New light novel"

    fill_in "Light novels actualite", with: @_light_novel._light_novels_actualite_id
    fill_in "Light novels actualite mini", with: @_light_novel._light_novels_actualite_mini_id
    fill_in "Light novels am", with: @_light_novel._light_novels_am_id
    fill_in "Light novels am plus", with: @_light_novel._light_novels_am_plus_id
    fill_in "Light novels anime", with: @_light_novel._light_novels_anime_id
    fill_in "Light novels anime plus", with: @_light_novel._light_novels_anime_plus_id
    fill_in "Light novels artbook", with: @_light_novel._light_novels_artbook_id
    fill_in "Light novels commerce", with: @_light_novel._light_novels_commerce_id
    fill_in "Light novels culture", with: @_light_novel._light_novels_culture_id
    fill_in "Light novels drama", with: @_light_novel._light_novels_drama_id
    fill_in "Light novels drama plus", with: @_light_novel._light_novels_drama_plus_id
    fill_in "Light novels editeurs vf collection", with: @_light_novel._light_novels_editeurs_vf_collection_id
    fill_in "Light novels editeurs vf", with: @_light_novel._light_novels_editeurs_vf_id
    fill_in "Light novels editeurs vo", with: @_light_novel._light_novels_editeurs_vo_id
    fill_in "Light novels encours vf", with: @_light_novel._light_novels_encours_vf_id
    fill_in "Light novels encours vo", with: @_light_novel._light_novels_encours_vo_id
    fill_in "Light novels genres", with: @_light_novel._light_novels_genres_id
    fill_in "Light novels groupes", with: @_light_novel._light_novels_groupes_id
    fill_in "Light novels jv", with: @_light_novel._light_novels_jv_id
    fill_in "Light novels jv plus", with: @_light_novel._light_novels_jv_plus_id
    fill_in "Light novels litterature asiatique", with: @_light_novel._light_novels_litterature_asiatique_id
    fill_in "Light novels litterature asiatique plus", with: @_light_novel._light_novels_litterature_asiatique_plus_id
    fill_in "Light novels ln", with: @_light_novel._light_novels_ln_id
    fill_in "Light novels ln plus", with: @_light_novel._light_novels_ln_plus_id
    fill_in "Light novels manga", with: @_light_novel._light_novels_manga_id
    fill_in "Light novels manga plus", with: @_light_novel._light_novels_manga_plus_id
    fill_in "Light novels ost", with: @_light_novel._light_novels_ost_id
    fill_in "Light novels pays", with: @_light_novel._light_novels_pays_id
    fill_in "Light novels prepublie", with: @_light_novel._light_novels_prepublie_id
    fill_in "Light novels public averti", with: @_light_novel._light_novels_public_averti_id
    fill_in "Light novels quizz", with: @_light_novel._light_novels_quizz_id
    fill_in "Light novels societe people", with: @_light_novel._light_novels_societe_people_id
    fill_in "Light novels societe role", with: @_light_novel._light_novels_societe_role_id
    fill_in "Light novels staff people", with: @_light_novel._light_novels_staff_people_id
    fill_in "Light novels staff role", with: @_light_novel._light_novels_staff_role_id
    fill_in "Light novels themes", with: @_light_novel._light_novels_themes_id
    fill_in "Acceptregles", with: @_light_novel.acceptregles
    fill_in "Adapte anime", with: @_light_novel.adapte_anime
    fill_in "Age", with: @_light_novel.age
    fill_in "Annee vf", with: @_light_novel.annee_vf
    fill_in "Annee vo", with: @_light_novel.annee_vo
    fill_in "Comment", with: @_light_novel.comment
    fill_in "Image", with: @_light_novel.image
    fill_in "Image vo", with: @_light_novel.image_vo
    fill_in "Nb chapitres vf", with: @_light_novel.nb_chapitres_vf
    fill_in "Nb chapitres vo", with: @_light_novel.nb_chapitres_vo
    fill_in "Nb volumes vf", with: @_light_novel.nb_volumes_vf
    fill_in "Nb volumes vo", with: @_light_novel.nb_volumes_vo
    fill_in "Prix", with: @_light_novel.prix
    fill_in "Resume", with: @_light_novel.resume
    fill_in "Statut prop", with: @_light_novel.statut_prop
    fill_in "Titre", with: @_light_novel.titre
    fill_in "Titre alternatif", with: @_light_novel.titre_alternatif
    fill_in "Titre alternatif suite", with: @_light_novel.titre_alternatif_suite
    fill_in "Titre original", with: @_light_novel.titre_original
    fill_in "Titre original latin", with: @_light_novel.titre_original_latin
    fill_in "Webcomic", with: @_light_novel.webcomic
    click_on "Create Light novel"

    assert_text "Light novel was successfully created"
    click_on "Back"
  end

  test "should update Light novel" do
    visit _light_novel_url(@_light_novel)
    click_on "Edit this light novel", match: :first

    fill_in "Light novels actualite", with: @_light_novel._light_novels_actualite_id
    fill_in "Light novels actualite mini", with: @_light_novel._light_novels_actualite_mini_id
    fill_in "Light novels am", with: @_light_novel._light_novels_am_id
    fill_in "Light novels am plus", with: @_light_novel._light_novels_am_plus_id
    fill_in "Light novels anime", with: @_light_novel._light_novels_anime_id
    fill_in "Light novels anime plus", with: @_light_novel._light_novels_anime_plus_id
    fill_in "Light novels artbook", with: @_light_novel._light_novels_artbook_id
    fill_in "Light novels commerce", with: @_light_novel._light_novels_commerce_id
    fill_in "Light novels culture", with: @_light_novel._light_novels_culture_id
    fill_in "Light novels drama", with: @_light_novel._light_novels_drama_id
    fill_in "Light novels drama plus", with: @_light_novel._light_novels_drama_plus_id
    fill_in "Light novels editeurs vf collection", with: @_light_novel._light_novels_editeurs_vf_collection_id
    fill_in "Light novels editeurs vf", with: @_light_novel._light_novels_editeurs_vf_id
    fill_in "Light novels editeurs vo", with: @_light_novel._light_novels_editeurs_vo_id
    fill_in "Light novels encours vf", with: @_light_novel._light_novels_encours_vf_id
    fill_in "Light novels encours vo", with: @_light_novel._light_novels_encours_vo_id
    fill_in "Light novels genres", with: @_light_novel._light_novels_genres_id
    fill_in "Light novels groupes", with: @_light_novel._light_novels_groupes_id
    fill_in "Light novels jv", with: @_light_novel._light_novels_jv_id
    fill_in "Light novels jv plus", with: @_light_novel._light_novels_jv_plus_id
    fill_in "Light novels litterature asiatique", with: @_light_novel._light_novels_litterature_asiatique_id
    fill_in "Light novels litterature asiatique plus", with: @_light_novel._light_novels_litterature_asiatique_plus_id
    fill_in "Light novels ln", with: @_light_novel._light_novels_ln_id
    fill_in "Light novels ln plus", with: @_light_novel._light_novels_ln_plus_id
    fill_in "Light novels manga", with: @_light_novel._light_novels_manga_id
    fill_in "Light novels manga plus", with: @_light_novel._light_novels_manga_plus_id
    fill_in "Light novels ost", with: @_light_novel._light_novels_ost_id
    fill_in "Light novels pays", with: @_light_novel._light_novels_pays_id
    fill_in "Light novels prepublie", with: @_light_novel._light_novels_prepublie_id
    fill_in "Light novels public averti", with: @_light_novel._light_novels_public_averti_id
    fill_in "Light novels quizz", with: @_light_novel._light_novels_quizz_id
    fill_in "Light novels societe people", with: @_light_novel._light_novels_societe_people_id
    fill_in "Light novels societe role", with: @_light_novel._light_novels_societe_role_id
    fill_in "Light novels staff people", with: @_light_novel._light_novels_staff_people_id
    fill_in "Light novels staff role", with: @_light_novel._light_novels_staff_role_id
    fill_in "Light novels themes", with: @_light_novel._light_novels_themes_id
    fill_in "Acceptregles", with: @_light_novel.acceptregles
    fill_in "Adapte anime", with: @_light_novel.adapte_anime
    fill_in "Age", with: @_light_novel.age
    fill_in "Annee vf", with: @_light_novel.annee_vf
    fill_in "Annee vo", with: @_light_novel.annee_vo
    fill_in "Comment", with: @_light_novel.comment
    fill_in "Image", with: @_light_novel.image
    fill_in "Image vo", with: @_light_novel.image_vo
    fill_in "Nb chapitres vf", with: @_light_novel.nb_chapitres_vf
    fill_in "Nb chapitres vo", with: @_light_novel.nb_chapitres_vo
    fill_in "Nb volumes vf", with: @_light_novel.nb_volumes_vf
    fill_in "Nb volumes vo", with: @_light_novel.nb_volumes_vo
    fill_in "Prix", with: @_light_novel.prix
    fill_in "Resume", with: @_light_novel.resume
    fill_in "Statut prop", with: @_light_novel.statut_prop
    fill_in "Titre", with: @_light_novel.titre
    fill_in "Titre alternatif", with: @_light_novel.titre_alternatif
    fill_in "Titre alternatif suite", with: @_light_novel.titre_alternatif_suite
    fill_in "Titre original", with: @_light_novel.titre_original
    fill_in "Titre original latin", with: @_light_novel.titre_original_latin
    fill_in "Webcomic", with: @_light_novel.webcomic
    click_on "Update Light novel"

    assert_text "Light novel was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novel" do
    visit _light_novel_url(@_light_novel)
    click_on "Destroy this light novel", match: :first

    assert_text "Light novel was successfully destroyed"
  end
end
