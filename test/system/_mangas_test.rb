require "application_system_test_case"

class MangasTest < ApplicationSystemTestCase
  setup do
    @_manga = _mangas(:one)
  end

  test "visiting the index" do
    visit _mangas_url
    assert_selector "h1", text: "Mangas"
  end

  test "should create manga" do
    visit _mangas_url
    click_on "New manga"

    fill_in "Mangas actualite", with: @_manga._mangas_actualite_id
    fill_in "Mangas actualite mini", with: @_manga._mangas_actualite_mini_id
    fill_in "Mangas am", with: @_manga._mangas_am_id
    fill_in "Mangas am plus", with: @_manga._mangas_am_plus_id
    fill_in "Mangas anime", with: @_manga._mangas_anime_id
    fill_in "Mangas anime plus", with: @_manga._mangas_anime_plus_id
    fill_in "Mangas artbook", with: @_manga._mangas_artbook_id
    fill_in "Mangas clip", with: @_manga._mangas_clip_id
    fill_in "Mangas commerce", with: @_manga._mangas_commerce_id
    fill_in "Mangas concours", with: @_manga._mangas_concours_id
    fill_in "Mangas culture", with: @_manga._mangas_culture_id
    fill_in "Mangas drama", with: @_manga._mangas_drama_id
    fill_in "Mangas drama plus", with: @_manga._mangas_drama_plus_id
    fill_in "Mangas editeurs vf collection", with: @_manga._mangas_editeurs_vf_collection_id
    fill_in "Mangas editeurs vf", with: @_manga._mangas_editeurs_vf_id
    fill_in "Mangas editeurs vo", with: @_manga._mangas_editeurs_vo_id
    fill_in "Mangas encours vf", with: @_manga._mangas_encours_vf_id
    fill_in "Mangas encours vo", with: @_manga._mangas_encours_vo_id
    fill_in "Mangas genres", with: @_manga._mangas_genres_id
    fill_in "Mangas groupes", with: @_manga._mangas_groupes_id
    fill_in "Mangas jv", with: @_manga._mangas_jv_id
    fill_in "Mangas jv plus", with: @_manga._mangas_jv_plus_id
    fill_in "Mangas litterature asiatique", with: @_manga._mangas_litterature_asiatique_id
    fill_in "Mangas litterature asiatique plus", with: @_manga._mangas_litterature_asiatique_plus_id
    fill_in "Mangas ln", with: @_manga._mangas_ln_id
    fill_in "Mangas ln plus", with: @_manga._mangas_ln_plus_id
    fill_in "Mangas manga", with: @_manga._mangas_manga_id
    fill_in "Mangas manga plus", with: @_manga._mangas_manga_plus_id
    fill_in "Mangas pays", with: @_manga._mangas_pays_id
    fill_in "Mangas people", with: @_manga._mangas_people_id
    fill_in "Mangas prepublie", with: @_manga._mangas_prepublie_id
    fill_in "Mangas public averti", with: @_manga._mangas_public_averti_id
    fill_in "Mangas quizz", with: @_manga._mangas_quizz_id
    fill_in "Mangas societe people", with: @_manga._mangas_societe_people_id
    fill_in "Mangas societe role", with: @_manga._mangas_societe_role_id
    fill_in "Mangas sondage", with: @_manga._mangas_sondage_id
    fill_in "Mangas staff people", with: @_manga._mangas_staff_people_id
    fill_in "Mangas staff role", with: @_manga._mangas_staff_role_id
    fill_in "Mangas themes", with: @_manga._mangas_themes_id
    fill_in "Mangas type", with: @_manga._mangas_type_id
    fill_in "Acceptregles", with: @_manga.acceptregles
    fill_in "Adapte anime", with: @_manga.adapte_anime
    fill_in "Age", with: @_manga.age
    fill_in "Annee defaut", with: @_manga.annee_defaut
    fill_in "Annee vf", with: @_manga.annee_vf
    fill_in "Annee vo", with: @_manga.annee_vo
    fill_in "Comment", with: @_manga.comment
    fill_in "Image", with: @_manga.image
    fill_in "Image vo", with: @_manga.image_vo
    fill_in "Infos", with: @_manga.infos
    fill_in "Nb chapitres vf", with: @_manga.nb_chapitres_vf
    fill_in "Nb chapitres vo", with: @_manga.nb_chapitres_vo
    fill_in "Nb volumes vf", with: @_manga.nb_volumes_vf
    fill_in "Nb volumes vo", with: @_manga.nb_volumes_vo
    fill_in "Prix", with: @_manga.prix
    fill_in "Resume", with: @_manga.resume
    fill_in "Statut prop", with: @_manga.statut_prop
    fill_in "Titre", with: @_manga.titre
    fill_in "Titre alternatif", with: @_manga.titre_alternatif
    fill_in "Titre alternatif suite", with: @_manga.titre_alternatif_suite
    fill_in "Titre original", with: @_manga.titre_original
    fill_in "Titre original latin", with: @_manga.titre_original_latin
    fill_in "Webcomic", with: @_manga.webcomic
    fill_in "Youtube", with: @_manga.youtube
    click_on "Create Manga"

    assert_text "Manga was successfully created"
    click_on "Back"
  end

  test "should update Manga" do
    visit _manga_url(@_manga)
    click_on "Edit this manga", match: :first

    fill_in "Mangas actualite", with: @_manga._mangas_actualite_id
    fill_in "Mangas actualite mini", with: @_manga._mangas_actualite_mini_id
    fill_in "Mangas am", with: @_manga._mangas_am_id
    fill_in "Mangas am plus", with: @_manga._mangas_am_plus_id
    fill_in "Mangas anime", with: @_manga._mangas_anime_id
    fill_in "Mangas anime plus", with: @_manga._mangas_anime_plus_id
    fill_in "Mangas artbook", with: @_manga._mangas_artbook_id
    fill_in "Mangas clip", with: @_manga._mangas_clip_id
    fill_in "Mangas commerce", with: @_manga._mangas_commerce_id
    fill_in "Mangas concours", with: @_manga._mangas_concours_id
    fill_in "Mangas culture", with: @_manga._mangas_culture_id
    fill_in "Mangas drama", with: @_manga._mangas_drama_id
    fill_in "Mangas drama plus", with: @_manga._mangas_drama_plus_id
    fill_in "Mangas editeurs vf collection", with: @_manga._mangas_editeurs_vf_collection_id
    fill_in "Mangas editeurs vf", with: @_manga._mangas_editeurs_vf_id
    fill_in "Mangas editeurs vo", with: @_manga._mangas_editeurs_vo_id
    fill_in "Mangas encours vf", with: @_manga._mangas_encours_vf_id
    fill_in "Mangas encours vo", with: @_manga._mangas_encours_vo_id
    fill_in "Mangas genres", with: @_manga._mangas_genres_id
    fill_in "Mangas groupes", with: @_manga._mangas_groupes_id
    fill_in "Mangas jv", with: @_manga._mangas_jv_id
    fill_in "Mangas jv plus", with: @_manga._mangas_jv_plus_id
    fill_in "Mangas litterature asiatique", with: @_manga._mangas_litterature_asiatique_id
    fill_in "Mangas litterature asiatique plus", with: @_manga._mangas_litterature_asiatique_plus_id
    fill_in "Mangas ln", with: @_manga._mangas_ln_id
    fill_in "Mangas ln plus", with: @_manga._mangas_ln_plus_id
    fill_in "Mangas manga", with: @_manga._mangas_manga_id
    fill_in "Mangas manga plus", with: @_manga._mangas_manga_plus_id
    fill_in "Mangas pays", with: @_manga._mangas_pays_id
    fill_in "Mangas people", with: @_manga._mangas_people_id
    fill_in "Mangas prepublie", with: @_manga._mangas_prepublie_id
    fill_in "Mangas public averti", with: @_manga._mangas_public_averti_id
    fill_in "Mangas quizz", with: @_manga._mangas_quizz_id
    fill_in "Mangas societe people", with: @_manga._mangas_societe_people_id
    fill_in "Mangas societe role", with: @_manga._mangas_societe_role_id
    fill_in "Mangas sondage", with: @_manga._mangas_sondage_id
    fill_in "Mangas staff people", with: @_manga._mangas_staff_people_id
    fill_in "Mangas staff role", with: @_manga._mangas_staff_role_id
    fill_in "Mangas themes", with: @_manga._mangas_themes_id
    fill_in "Mangas type", with: @_manga._mangas_type_id
    fill_in "Acceptregles", with: @_manga.acceptregles
    fill_in "Adapte anime", with: @_manga.adapte_anime
    fill_in "Age", with: @_manga.age
    fill_in "Annee defaut", with: @_manga.annee_defaut
    fill_in "Annee vf", with: @_manga.annee_vf
    fill_in "Annee vo", with: @_manga.annee_vo
    fill_in "Comment", with: @_manga.comment
    fill_in "Image", with: @_manga.image
    fill_in "Image vo", with: @_manga.image_vo
    fill_in "Infos", with: @_manga.infos
    fill_in "Nb chapitres vf", with: @_manga.nb_chapitres_vf
    fill_in "Nb chapitres vo", with: @_manga.nb_chapitres_vo
    fill_in "Nb volumes vf", with: @_manga.nb_volumes_vf
    fill_in "Nb volumes vo", with: @_manga.nb_volumes_vo
    fill_in "Prix", with: @_manga.prix
    fill_in "Resume", with: @_manga.resume
    fill_in "Statut prop", with: @_manga.statut_prop
    fill_in "Titre", with: @_manga.titre
    fill_in "Titre alternatif", with: @_manga.titre_alternatif
    fill_in "Titre alternatif suite", with: @_manga.titre_alternatif_suite
    fill_in "Titre original", with: @_manga.titre_original
    fill_in "Titre original latin", with: @_manga.titre_original_latin
    fill_in "Webcomic", with: @_manga.webcomic
    fill_in "Youtube", with: @_manga.youtube
    click_on "Update Manga"

    assert_text "Manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Manga" do
    visit _manga_url(@_manga)
    click_on "Destroy this manga", match: :first

    assert_text "Manga was successfully destroyed"
  end
end
