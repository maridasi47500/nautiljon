require "application_system_test_case"

class CdsTest < ApplicationSystemTestCase
  setup do
    @_cd = _cds(:one)
  end

  test "visiting the index" do
    visit _cds_url
    assert_selector "h1", text: "Cds"
  end

  test "should create cd" do
    visit _cds_url
    click_on "New cd"

    fill_in "Cds am", with: @_cd._cds_am_id
    fill_in "Cds anime", with: @_cd._cds_anime_id
    fill_in "Cds bonus", with: @_cd._cds_bonus_id
    fill_in "Cds cd", with: @_cd._cds_cd_id
    fill_in "Cds distributeurs", with: @_cd._cds_distributeurs_id
    fill_in "Cds drama", with: @_cd._cds_drama_id
    fill_in "Cds emission tv", with: @_cd._cds_emission_tv_id
    fill_in "Cds groupes", with: @_cd._cds_groupes_id
    fill_in "Cds jv", with: @_cd._cds_jv_id
    fill_in "Cds labels", with: @_cd._cds_labels_id
    fill_in "Cds ln", with: @_cd._cds_ln_id
    fill_in "Cds manga", with: @_cd._cds_manga_id
    fill_in "Cds monnaie", with: @_cd._cds_monnaie_id
    fill_in "Cds people", with: @_cd._cds_people_id
    fill_in "Cds role", with: @_cd._cds_role_id
    fill_in "Cds type", with: @_cd._cds_type_id
    fill_in "Acceptregles", with: @_cd.acceptregles
    fill_in "Comment", with: @_cd.comment
    fill_in "Date aaaa", with: @_cd.date_aaaa
    fill_in "Date jj", with: @_cd.date_jj
    fill_in "Date mm", with: @_cd.date_mm
    fill_in "Image", with: @_cd.image
    fill_in "Infos", with: @_cd.infos
    fill_in "Prix", with: @_cd.prix
    fill_in "Ref", with: @_cd.ref
    fill_in "Sametracklist", with: @_cd.sametracklist
    fill_in "Statut prop", with: @_cd.statut_prop
    fill_in "Titre", with: @_cd.titre
    fill_in "Titre original", with: @_cd.titre_original
    fill_in "Titre original latin", with: @_cd.titre_original_latin
    click_on "Create Cd"

    assert_text "Cd was successfully created"
    click_on "Back"
  end

  test "should update Cd" do
    visit _cd_url(@_cd)
    click_on "Edit this cd", match: :first

    fill_in "Cds am", with: @_cd._cds_am_id
    fill_in "Cds anime", with: @_cd._cds_anime_id
    fill_in "Cds bonus", with: @_cd._cds_bonus_id
    fill_in "Cds cd", with: @_cd._cds_cd_id
    fill_in "Cds distributeurs", with: @_cd._cds_distributeurs_id
    fill_in "Cds drama", with: @_cd._cds_drama_id
    fill_in "Cds emission tv", with: @_cd._cds_emission_tv_id
    fill_in "Cds groupes", with: @_cd._cds_groupes_id
    fill_in "Cds jv", with: @_cd._cds_jv_id
    fill_in "Cds labels", with: @_cd._cds_labels_id
    fill_in "Cds ln", with: @_cd._cds_ln_id
    fill_in "Cds manga", with: @_cd._cds_manga_id
    fill_in "Cds monnaie", with: @_cd._cds_monnaie_id
    fill_in "Cds people", with: @_cd._cds_people_id
    fill_in "Cds role", with: @_cd._cds_role_id
    fill_in "Cds type", with: @_cd._cds_type_id
    fill_in "Acceptregles", with: @_cd.acceptregles
    fill_in "Comment", with: @_cd.comment
    fill_in "Date aaaa", with: @_cd.date_aaaa
    fill_in "Date jj", with: @_cd.date_jj
    fill_in "Date mm", with: @_cd.date_mm
    fill_in "Image", with: @_cd.image
    fill_in "Infos", with: @_cd.infos
    fill_in "Prix", with: @_cd.prix
    fill_in "Ref", with: @_cd.ref
    fill_in "Sametracklist", with: @_cd.sametracklist
    fill_in "Statut prop", with: @_cd.statut_prop
    fill_in "Titre", with: @_cd.titre
    fill_in "Titre original", with: @_cd.titre_original
    fill_in "Titre original latin", with: @_cd.titre_original_latin
    click_on "Update Cd"

    assert_text "Cd was successfully updated"
    click_on "Back"
  end

  test "should destroy Cd" do
    visit _cd_url(@_cd)
    click_on "Destroy this cd", match: :first

    assert_text "Cd was successfully destroyed"
  end
end
