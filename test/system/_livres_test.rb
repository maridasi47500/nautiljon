require "application_system_test_case"

class LivresTest < ApplicationSystemTestCase
  setup do
    @_livre = _livres(:one)
  end

  test "visiting the index" do
    visit _livres_url
    assert_selector "h1", text: "Livres"
  end

  test "should create livre" do
    visit _livres_url
    click_on "New livre"

    fill_in "Livres actualite", with: @_livre._livres_actualite_id
    fill_in "Livres actualite mini", with: @_livre._livres_actualite_mini_id
    fill_in "Livres am", with: @_livre._livres_am_id
    fill_in "Livres am plus", with: @_livre._livres_am_plus_id
    fill_in "Livres anime", with: @_livre._livres_anime_id
    fill_in "Livres anime plus", with: @_livre._livres_anime_plus_id
    fill_in "Livres culture", with: @_livre._livres_culture_id
    fill_in "Livres drama", with: @_livre._livres_drama_id
    fill_in "Livres drama plus", with: @_livre._livres_drama_plus_id
    fill_in "Livres editeurs vf", with: @_livre._livres_editeurs_vf_id
    fill_in "Livres editeurs vo", with: @_livre._livres_editeurs_vo_id
    fill_in "Livres genres", with: @_livre._livres_genres_id
    fill_in "Livres goodies", with: @_livre._livres_goodies_id
    fill_in "Livres groupes", with: @_livre._livres_groupes_id
    fill_in "Livres jv", with: @_livre._livres_jv_id
    fill_in "Livres jv plus", with: @_livre._livres_jv_plus_id
    fill_in "Livres litterature asiatique", with: @_livre._livres_litterature_asiatique_id
    fill_in "Livres litterature asiatique plus", with: @_livre._livres_litterature_asiatique_plus_id
    fill_in "Livres ln", with: @_livre._livres_ln_id
    fill_in "Livres ln plus", with: @_livre._livres_ln_plus_id
    fill_in "Livres manga", with: @_livre._livres_manga_id
    fill_in "Livres manga plus", with: @_livre._livres_manga_plus_id
    fill_in "Livres pays", with: @_livre._livres_pays_id
    fill_in "Livres pays theme", with: @_livre._livres_pays_theme_id
    fill_in "Livres people", with: @_livre._livres_people_id
    fill_in "Livres public averti", with: @_livre._livres_public_averti_id
    fill_in "Livres staff people", with: @_livre._livres_staff_people_id
    fill_in "Livres staff role", with: @_livre._livres_staff_role_id
    fill_in "Livres statut publication", with: @_livre._livres_statut_publication_id
    fill_in "Livres themes", with: @_livre._livres_themes_id
    fill_in "Livres type", with: @_livre._livres_type_id
    fill_in "Livres type secondaire", with: @_livre._livres_type_secondaire_id
    fill_in "Acceptregles", with: @_livre.acceptregles
    fill_in "Age", with: @_livre.age
    fill_in "Collection", with: @_livre.collection
    fill_in "Comment", with: @_livre.comment
    fill_in "Date parution vf aaaa", with: @_livre.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @_livre.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @_livre.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @_livre.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @_livre.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @_livre.date_parution_vo_mm
    fill_in "Ean", with: @_livre.ean
    fill_in "Gratuit", with: @_livre.gratuit
    fill_in "Image", with: @_livre.image
    fill_in "Pages", with: @_livre.pages
    fill_in "Preview", with: @_livre.preview
    fill_in "Prix", with: @_livre.prix
    fill_in "Resume", with: @_livre.resume
    fill_in "Statut prop", with: @_livre.statut_prop
    fill_in "Titre", with: @_livre.titre
    fill_in "Titre original", with: @_livre.titre_original
    fill_in "Titre original latin", with: @_livre.titre_original_latin
    fill_in "Traducteur", with: @_livre.traducteur
    click_on "Create Livre"

    assert_text "Livre was successfully created"
    click_on "Back"
  end

  test "should update Livre" do
    visit _livre_url(@_livre)
    click_on "Edit this livre", match: :first

    fill_in "Livres actualite", with: @_livre._livres_actualite_id
    fill_in "Livres actualite mini", with: @_livre._livres_actualite_mini_id
    fill_in "Livres am", with: @_livre._livres_am_id
    fill_in "Livres am plus", with: @_livre._livres_am_plus_id
    fill_in "Livres anime", with: @_livre._livres_anime_id
    fill_in "Livres anime plus", with: @_livre._livres_anime_plus_id
    fill_in "Livres culture", with: @_livre._livres_culture_id
    fill_in "Livres drama", with: @_livre._livres_drama_id
    fill_in "Livres drama plus", with: @_livre._livres_drama_plus_id
    fill_in "Livres editeurs vf", with: @_livre._livres_editeurs_vf_id
    fill_in "Livres editeurs vo", with: @_livre._livres_editeurs_vo_id
    fill_in "Livres genres", with: @_livre._livres_genres_id
    fill_in "Livres goodies", with: @_livre._livres_goodies_id
    fill_in "Livres groupes", with: @_livre._livres_groupes_id
    fill_in "Livres jv", with: @_livre._livres_jv_id
    fill_in "Livres jv plus", with: @_livre._livres_jv_plus_id
    fill_in "Livres litterature asiatique", with: @_livre._livres_litterature_asiatique_id
    fill_in "Livres litterature asiatique plus", with: @_livre._livres_litterature_asiatique_plus_id
    fill_in "Livres ln", with: @_livre._livres_ln_id
    fill_in "Livres ln plus", with: @_livre._livres_ln_plus_id
    fill_in "Livres manga", with: @_livre._livres_manga_id
    fill_in "Livres manga plus", with: @_livre._livres_manga_plus_id
    fill_in "Livres pays", with: @_livre._livres_pays_id
    fill_in "Livres pays theme", with: @_livre._livres_pays_theme_id
    fill_in "Livres people", with: @_livre._livres_people_id
    fill_in "Livres public averti", with: @_livre._livres_public_averti_id
    fill_in "Livres staff people", with: @_livre._livres_staff_people_id
    fill_in "Livres staff role", with: @_livre._livres_staff_role_id
    fill_in "Livres statut publication", with: @_livre._livres_statut_publication_id
    fill_in "Livres themes", with: @_livre._livres_themes_id
    fill_in "Livres type", with: @_livre._livres_type_id
    fill_in "Livres type secondaire", with: @_livre._livres_type_secondaire_id
    fill_in "Acceptregles", with: @_livre.acceptregles
    fill_in "Age", with: @_livre.age
    fill_in "Collection", with: @_livre.collection
    fill_in "Comment", with: @_livre.comment
    fill_in "Date parution vf aaaa", with: @_livre.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @_livre.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @_livre.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @_livre.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @_livre.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @_livre.date_parution_vo_mm
    fill_in "Ean", with: @_livre.ean
    fill_in "Gratuit", with: @_livre.gratuit
    fill_in "Image", with: @_livre.image
    fill_in "Pages", with: @_livre.pages
    fill_in "Preview", with: @_livre.preview
    fill_in "Prix", with: @_livre.prix
    fill_in "Resume", with: @_livre.resume
    fill_in "Statut prop", with: @_livre.statut_prop
    fill_in "Titre", with: @_livre.titre
    fill_in "Titre original", with: @_livre.titre_original
    fill_in "Titre original latin", with: @_livre.titre_original_latin
    fill_in "Traducteur", with: @_livre.traducteur
    click_on "Update Livre"

    assert_text "Livre was successfully updated"
    click_on "Back"
  end

  test "should destroy Livre" do
    visit _livre_url(@_livre)
    click_on "Destroy this livre", match: :first

    assert_text "Livre was successfully destroyed"
  end
end
