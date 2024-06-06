require "application_system_test_case"

class FicheUniversTest < ApplicationSystemTestCase
  setup do
    @_fiche_univer = _fiche_univers(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_url
    assert_selector "h1", text: "Fiche univers"
  end

  test "should create fiche univer" do
    visit _fiche_univers_url
    click_on "New fiche univer"

    fill_in "Fiche univers actualite", with: @_fiche_univer._fiche_univers_actualite_id
    fill_in "Fiche univers actualite mini", with: @_fiche_univer._fiche_univers_actualite_mini_id
    fill_in "Fiche univers am", with: @_fiche_univer._fiche_univers_am_id
    fill_in "Fiche univers anime", with: @_fiche_univer._fiche_univers_anime_id
    fill_in "Fiche univers cat", with: @_fiche_univer._fiche_univers_cat_id
    fill_in "Fiche univers culture", with: @_fiche_univer._fiche_univers_culture_id
    fill_in "Fiche univers doujinshi", with: @_fiche_univer._fiche_univers_doujinshi_id
    fill_in "Fiche univers drama", with: @_fiche_univer._fiche_univers_drama_id
    fill_in "Fiche univers groupes", with: @_fiche_univer._fiche_univers_groupes_id
    fill_in "Fiche univers jv", with: @_fiche_univer._fiche_univers_jv_id
    fill_in "Fiche univers jv perso", with: @_fiche_univer._fiche_univers_jv_perso_id
    fill_in "Fiche univers litterature asiatique", with: @_fiche_univer._fiche_univers_litterature_asiatique_id
    fill_in "Fiche univers ln", with: @_fiche_univer._fiche_univers_ln_id
    fill_in "Fiche univers manga", with: @_fiche_univer._fiche_univers_manga_id
    fill_in "Fiche univers people", with: @_fiche_univer._fiche_univers_people_id
    fill_in "Fiche univers perso", with: @_fiche_univer._fiche_univers_perso_id
    fill_in "Fiche univers perso manga", with: @_fiche_univer._fiche_univers_perso_manga_id
    fill_in "Fiche univers univers", with: @_fiche_univer._fiche_univers_univers_id
    fill_in "Acceptregles", with: @_fiche_univer.acceptregles
    fill_in "Comment", with: @_fiche_univer.comment
    fill_in "Description", with: @_fiche_univer.description
    fill_in "Image", with: @_fiche_univer.image
    fill_in "Nom", with: @_fiche_univer.nom
    fill_in "Nom alternatif", with: @_fiche_univer.nom_alternatif
    fill_in "Nom original", with: @_fiche_univer.nom_original
    fill_in "Nom suite", with: @_fiche_univer.nom_suite
    fill_in "Statut prop", with: @_fiche_univer.statut_prop
    click_on "Create Fiche univer"

    assert_text "Fiche univer was successfully created"
    click_on "Back"
  end

  test "should update Fiche univer" do
    visit _fiche_univer_url(@_fiche_univer)
    click_on "Edit this fiche univer", match: :first

    fill_in "Fiche univers actualite", with: @_fiche_univer._fiche_univers_actualite_id
    fill_in "Fiche univers actualite mini", with: @_fiche_univer._fiche_univers_actualite_mini_id
    fill_in "Fiche univers am", with: @_fiche_univer._fiche_univers_am_id
    fill_in "Fiche univers anime", with: @_fiche_univer._fiche_univers_anime_id
    fill_in "Fiche univers cat", with: @_fiche_univer._fiche_univers_cat_id
    fill_in "Fiche univers culture", with: @_fiche_univer._fiche_univers_culture_id
    fill_in "Fiche univers doujinshi", with: @_fiche_univer._fiche_univers_doujinshi_id
    fill_in "Fiche univers drama", with: @_fiche_univer._fiche_univers_drama_id
    fill_in "Fiche univers groupes", with: @_fiche_univer._fiche_univers_groupes_id
    fill_in "Fiche univers jv", with: @_fiche_univer._fiche_univers_jv_id
    fill_in "Fiche univers jv perso", with: @_fiche_univer._fiche_univers_jv_perso_id
    fill_in "Fiche univers litterature asiatique", with: @_fiche_univer._fiche_univers_litterature_asiatique_id
    fill_in "Fiche univers ln", with: @_fiche_univer._fiche_univers_ln_id
    fill_in "Fiche univers manga", with: @_fiche_univer._fiche_univers_manga_id
    fill_in "Fiche univers people", with: @_fiche_univer._fiche_univers_people_id
    fill_in "Fiche univers perso", with: @_fiche_univer._fiche_univers_perso_id
    fill_in "Fiche univers perso manga", with: @_fiche_univer._fiche_univers_perso_manga_id
    fill_in "Fiche univers univers", with: @_fiche_univer._fiche_univers_univers_id
    fill_in "Acceptregles", with: @_fiche_univer.acceptregles
    fill_in "Comment", with: @_fiche_univer.comment
    fill_in "Description", with: @_fiche_univer.description
    fill_in "Image", with: @_fiche_univer.image
    fill_in "Nom", with: @_fiche_univer.nom
    fill_in "Nom alternatif", with: @_fiche_univer.nom_alternatif
    fill_in "Nom original", with: @_fiche_univer.nom_original
    fill_in "Nom suite", with: @_fiche_univer.nom_suite
    fill_in "Statut prop", with: @_fiche_univer.statut_prop
    click_on "Update Fiche univer"

    assert_text "Fiche univer was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univer" do
    visit _fiche_univer_url(@_fiche_univer)
    click_on "Destroy this fiche univer", match: :first

    assert_text "Fiche univer was successfully destroyed"
  end
end
