require "application_system_test_case"

class AmvsTest < ApplicationSystemTestCase
  setup do
    @amv = amvs(:one)
  end

  test "visiting the index" do
    visit amvs_url
    assert_selector "h1", text: "Amvs"
  end

  test "should create amv" do
    visit amvs_url
    click_on "New amv"

    fill_in "Acceptregles", with: @amv.acceptregles
    fill_in "Amvs amv", with: @amv.amvs_amv_id
    fill_in "Amvs anime", with: @amv.amvs_anime_id
    fill_in "Amvs conventions", with: @amv.amvs_conventions_id
    fill_in "Amvs groupes", with: @amv.amvs_groupes_id
    fill_in "Amvs jv", with: @amv.amvs_jv_id
    fill_in "Amvs makers", with: @amv.amvs_makers_id
    fill_in "Amvs type", with: @amv.amvs_type_id
    fill_in "Autre", with: @amv.autre
    fill_in "Comment", with: @amv.comment
    fill_in "Date aaaa", with: @amv.date_aaaa
    fill_in "Date jj", with: @amv.date_jj
    fill_in "Date mm", with: @amv.date_mm
    fill_in "Description", with: @amv.description
    fill_in "Duree", with: @amv.duree
    fill_in "Image", with: @amv.image
    fill_in "Lien", with: @amv.lien
    fill_in "Song", with: @amv.song
    fill_in "Statut prop", with: @amv.statut_prop
    fill_in "Titre", with: @amv.titre
    fill_in "Youtube", with: @amv.youtube
    click_on "Create Amv"

    assert_text "Amv was successfully created"
    click_on "Back"
  end

  test "should update Amv" do
    visit amv_url(@amv)
    click_on "Edit this amv", match: :first

    fill_in "Acceptregles", with: @amv.acceptregles
    fill_in "Amvs amv", with: @amv.amvs_amv_id
    fill_in "Amvs anime", with: @amv.amvs_anime_id
    fill_in "Amvs conventions", with: @amv.amvs_conventions_id
    fill_in "Amvs groupes", with: @amv.amvs_groupes_id
    fill_in "Amvs jv", with: @amv.amvs_jv_id
    fill_in "Amvs makers", with: @amv.amvs_makers_id
    fill_in "Amvs type", with: @amv.amvs_type_id
    fill_in "Autre", with: @amv.autre
    fill_in "Comment", with: @amv.comment
    fill_in "Date aaaa", with: @amv.date_aaaa
    fill_in "Date jj", with: @amv.date_jj
    fill_in "Date mm", with: @amv.date_mm
    fill_in "Description", with: @amv.description
    fill_in "Duree", with: @amv.duree
    fill_in "Image", with: @amv.image
    fill_in "Lien", with: @amv.lien
    fill_in "Song", with: @amv.song
    fill_in "Statut prop", with: @amv.statut_prop
    fill_in "Titre", with: @amv.titre
    fill_in "Youtube", with: @amv.youtube
    click_on "Update Amv"

    assert_text "Amv was successfully updated"
    click_on "Back"
  end

  test "should destroy Amv" do
    visit amv_url(@amv)
    click_on "Destroy this amv", match: :first

    assert_text "Amv was successfully destroyed"
  end
end
