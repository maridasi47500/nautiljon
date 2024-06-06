require "application_system_test_case"

class OstsTest < ApplicationSystemTestCase
  setup do
    @ost = osts(:one)
  end

  test "visiting the index" do
    visit osts_url
    assert_selector "h1", text: "Osts"
  end

  test "should create ost" do
    visit osts_url
    click_on "New ost"

    fill_in "Acceptregles", with: @ost.acceptregles
    fill_in "Bonus cd", with: @ost.bonus_cd
    fill_in "Comment", with: @ost.comment
    fill_in "Date aaaa", with: @ost.date_aaaa
    fill_in "Date jj", with: @ost.date_jj
    fill_in "Date mm", with: @ost.date_mm
    fill_in "Image", with: @ost.image
    fill_in "Infos", with: @ost.infos
    fill_in "Osts am", with: @ost.osts_am_id
    fill_in "Osts anime", with: @ost.osts_anime_id
    fill_in "Osts distributeurs", with: @ost.osts_distributeurs_id
    fill_in "Osts drama", with: @ost.osts_drama_id
    fill_in "Osts emission tv", with: @ost.osts_emission_tv_id
    fill_in "Osts groupes", with: @ost.osts_groupes_id
    fill_in "Osts jv", with: @ost.osts_jv_id
    fill_in "Osts labels", with: @ost.osts_labels_id
    fill_in "Osts ln", with: @ost.osts_ln_id
    fill_in "Osts monnaie", with: @ost.osts_monnaie_id
    fill_in "Osts ost", with: @ost.osts_ost_id
    fill_in "Osts people", with: @ost.osts_people_id
    fill_in "Osts plateforme", with: @ost.osts_plateforme_id
    fill_in "Osts role", with: @ost.osts_role_id
    fill_in "Osts type", with: @ost.osts_type_id
    fill_in "Prix", with: @ost.prix
    fill_in "Ref", with: @ost.ref
    fill_in "Sametracklist", with: @ost.sametracklist
    fill_in "Statut prop", with: @ost.statut_prop
    fill_in "Titre", with: @ost.titre
    fill_in "Titre alternatif", with: @ost.titre_alternatif
    fill_in "Titre original", with: @ost.titre_original
    fill_in "Titre original latin", with: @ost.titre_original_latin
    fill_in "Titre us", with: @ost.titre_us
    click_on "Create Ost"

    assert_text "Ost was successfully created"
    click_on "Back"
  end

  test "should update Ost" do
    visit ost_url(@ost)
    click_on "Edit this ost", match: :first

    fill_in "Acceptregles", with: @ost.acceptregles
    fill_in "Bonus cd", with: @ost.bonus_cd
    fill_in "Comment", with: @ost.comment
    fill_in "Date aaaa", with: @ost.date_aaaa
    fill_in "Date jj", with: @ost.date_jj
    fill_in "Date mm", with: @ost.date_mm
    fill_in "Image", with: @ost.image
    fill_in "Infos", with: @ost.infos
    fill_in "Osts am", with: @ost.osts_am_id
    fill_in "Osts anime", with: @ost.osts_anime_id
    fill_in "Osts distributeurs", with: @ost.osts_distributeurs_id
    fill_in "Osts drama", with: @ost.osts_drama_id
    fill_in "Osts emission tv", with: @ost.osts_emission_tv_id
    fill_in "Osts groupes", with: @ost.osts_groupes_id
    fill_in "Osts jv", with: @ost.osts_jv_id
    fill_in "Osts labels", with: @ost.osts_labels_id
    fill_in "Osts ln", with: @ost.osts_ln_id
    fill_in "Osts monnaie", with: @ost.osts_monnaie_id
    fill_in "Osts ost", with: @ost.osts_ost_id
    fill_in "Osts people", with: @ost.osts_people_id
    fill_in "Osts plateforme", with: @ost.osts_plateforme_id
    fill_in "Osts role", with: @ost.osts_role_id
    fill_in "Osts type", with: @ost.osts_type_id
    fill_in "Prix", with: @ost.prix
    fill_in "Ref", with: @ost.ref
    fill_in "Sametracklist", with: @ost.sametracklist
    fill_in "Statut prop", with: @ost.statut_prop
    fill_in "Titre", with: @ost.titre
    fill_in "Titre alternatif", with: @ost.titre_alternatif
    fill_in "Titre original", with: @ost.titre_original
    fill_in "Titre original latin", with: @ost.titre_original_latin
    fill_in "Titre us", with: @ost.titre_us
    click_on "Update Ost"

    assert_text "Ost was successfully updated"
    click_on "Back"
  end

  test "should destroy Ost" do
    visit ost_url(@ost)
    click_on "Destroy this ost", match: :first

    assert_text "Ost was successfully destroyed"
  end
end
