require "application_system_test_case"

class ArtbooksEditeursVosTest < ApplicationSystemTestCase
  setup do
    @artbooks_editeurs_vo = artbooks_editeurs_vos(:one)
  end

  test "visiting the index" do
    visit artbooks_editeurs_vos_url
    assert_selector "h1", text: "Artbooks editeurs vos"
  end

  test "should create artbooks editeurs vo" do
    visit artbooks_editeurs_vos_url
    click_on "New artbooks editeurs vo"

    fill_in "Name", with: @artbooks_editeurs_vo.name
    click_on "Create Artbooks editeurs vo"

    assert_text "Artbooks editeurs vo was successfully created"
    click_on "Back"
  end

  test "should update Artbooks editeurs vo" do
    visit artbooks_editeurs_vo_url(@artbooks_editeurs_vo)
    click_on "Edit this artbooks editeurs vo", match: :first

    fill_in "Name", with: @artbooks_editeurs_vo.name
    click_on "Update Artbooks editeurs vo"

    assert_text "Artbooks editeurs vo was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks editeurs vo" do
    visit artbooks_editeurs_vo_url(@artbooks_editeurs_vo)
    click_on "Destroy this artbooks editeurs vo", match: :first

    assert_text "Artbooks editeurs vo was successfully destroyed"
  end
end
