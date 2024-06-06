require "application_system_test_case"

class PhotobooksTest < ApplicationSystemTestCase
  setup do
    @_photobook = _photobooks(:one)
  end

  test "visiting the index" do
    visit _photobooks_url
    assert_selector "h1", text: "Photobooks"
  end

  test "should create photobook" do
    visit _photobooks_url
    click_on "New photobook"

    fill_in "Photobooks actualite", with: @_photobook._photobooks_actualite_id
    fill_in "Photobooks actualite mini", with: @_photobook._photobooks_actualite_mini_id
    fill_in "Photobooks am", with: @_photobook._photobooks_am_id
    fill_in "Photobooks anime", with: @_photobook._photobooks_anime_id
    fill_in "Photobooks bonus", with: @_photobook._photobooks_bonus_id
    fill_in "Photobooks cd", with: @_photobook._photobooks_cd_id
    fill_in "Photobooks disponibilite", with: @_photobook._photobooks_disponibilite_id
    fill_in "Photobooks drama", with: @_photobook._photobooks_drama_id
    fill_in "Photobooks editeurs vf", with: @_photobook._photobooks_editeurs_vf_id
    fill_in "Photobooks editeurs vo", with: @_photobook._photobooks_editeurs_vo_id
    fill_in "Photobooks france", with: @_photobook._photobooks_france_id
    fill_in "Photobooks goodies", with: @_photobook._photobooks_goodies_id
    fill_in "Photobooks groupes", with: @_photobook._photobooks_groupes_id
    fill_in "Photobooks illustrations", with: @_photobook._photobooks_illustrations_id
    fill_in "Photobooks pays", with: @_photobook._photobooks_pays_id
    fill_in "Photobooks people", with: @_photobook._photobooks_people_id
    fill_in "Photobooks photobook", with: @_photobook._photobooks_photobook_id
    fill_in "Photobooks public averti", with: @_photobook._photobooks_public_averti_id
    fill_in "Photobooks role", with: @_photobook._photobooks_role_id
    fill_in "Photobooks societe people", with: @_photobook._photobooks_societe_people_id
    fill_in "Photobooks societe role", with: @_photobook._photobooks_societe_role_id
    fill_in "Photobooks type", with: @_photobook._photobooks_type_id
    fill_in "Acceptregles", with: @_photobook.acceptregles
    fill_in "Comment", with: @_photobook.comment
    fill_in "Date parution vf aaaa", with: @_photobook.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @_photobook.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @_photobook.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @_photobook.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @_photobook.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @_photobook.date_parution_vo_mm
    fill_in "Ean", with: @_photobook.ean
    fill_in "Image", with: @_photobook.image
    fill_in "Image vo", with: @_photobook.image_vo
    fill_in "Infos", with: @_photobook.infos
    fill_in "Nb pages", with: @_photobook.nb_pages
    fill_in "Prix", with: @_photobook.prix
    fill_in "Ref", with: @_photobook.ref
    fill_in "Resume", with: @_photobook.resume
    fill_in "Site", with: @_photobook.site
    fill_in "Statut prop", with: @_photobook.statut_prop
    fill_in "Titre", with: @_photobook.titre
    fill_in "Titre alternatif", with: @_photobook.titre_alternatif
    fill_in "Titre original", with: @_photobook.titre_original
    fill_in "Titre original latin", with: @_photobook.titre_original_latin
    click_on "Create Photobook"

    assert_text "Photobook was successfully created"
    click_on "Back"
  end

  test "should update Photobook" do
    visit _photobook_url(@_photobook)
    click_on "Edit this photobook", match: :first

    fill_in "Photobooks actualite", with: @_photobook._photobooks_actualite_id
    fill_in "Photobooks actualite mini", with: @_photobook._photobooks_actualite_mini_id
    fill_in "Photobooks am", with: @_photobook._photobooks_am_id
    fill_in "Photobooks anime", with: @_photobook._photobooks_anime_id
    fill_in "Photobooks bonus", with: @_photobook._photobooks_bonus_id
    fill_in "Photobooks cd", with: @_photobook._photobooks_cd_id
    fill_in "Photobooks disponibilite", with: @_photobook._photobooks_disponibilite_id
    fill_in "Photobooks drama", with: @_photobook._photobooks_drama_id
    fill_in "Photobooks editeurs vf", with: @_photobook._photobooks_editeurs_vf_id
    fill_in "Photobooks editeurs vo", with: @_photobook._photobooks_editeurs_vo_id
    fill_in "Photobooks france", with: @_photobook._photobooks_france_id
    fill_in "Photobooks goodies", with: @_photobook._photobooks_goodies_id
    fill_in "Photobooks groupes", with: @_photobook._photobooks_groupes_id
    fill_in "Photobooks illustrations", with: @_photobook._photobooks_illustrations_id
    fill_in "Photobooks pays", with: @_photobook._photobooks_pays_id
    fill_in "Photobooks people", with: @_photobook._photobooks_people_id
    fill_in "Photobooks photobook", with: @_photobook._photobooks_photobook_id
    fill_in "Photobooks public averti", with: @_photobook._photobooks_public_averti_id
    fill_in "Photobooks role", with: @_photobook._photobooks_role_id
    fill_in "Photobooks societe people", with: @_photobook._photobooks_societe_people_id
    fill_in "Photobooks societe role", with: @_photobook._photobooks_societe_role_id
    fill_in "Photobooks type", with: @_photobook._photobooks_type_id
    fill_in "Acceptregles", with: @_photobook.acceptregles
    fill_in "Comment", with: @_photobook.comment
    fill_in "Date parution vf aaaa", with: @_photobook.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @_photobook.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @_photobook.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @_photobook.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @_photobook.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @_photobook.date_parution_vo_mm
    fill_in "Ean", with: @_photobook.ean
    fill_in "Image", with: @_photobook.image
    fill_in "Image vo", with: @_photobook.image_vo
    fill_in "Infos", with: @_photobook.infos
    fill_in "Nb pages", with: @_photobook.nb_pages
    fill_in "Prix", with: @_photobook.prix
    fill_in "Ref", with: @_photobook.ref
    fill_in "Resume", with: @_photobook.resume
    fill_in "Site", with: @_photobook.site
    fill_in "Statut prop", with: @_photobook.statut_prop
    fill_in "Titre", with: @_photobook.titre
    fill_in "Titre alternatif", with: @_photobook.titre_alternatif
    fill_in "Titre original", with: @_photobook.titre_original
    fill_in "Titre original latin", with: @_photobook.titre_original_latin
    click_on "Update Photobook"

    assert_text "Photobook was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobook" do
    visit _photobook_url(@_photobook)
    click_on "Destroy this photobook", match: :first

    assert_text "Photobook was successfully destroyed"
  end
end
