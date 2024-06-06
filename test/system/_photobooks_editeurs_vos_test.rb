require "application_system_test_case"

class PhotobooksEditeursVosTest < ApplicationSystemTestCase
  setup do
    @_photobooks_editeurs_vo = _photobooks_editeurs_vos(:one)
  end

  test "visiting the index" do
    visit _photobooks_editeurs_vos_url
    assert_selector "h1", text: "Photobooks editeurs vos"
  end

  test "should create photobooks editeurs vo" do
    visit _photobooks_editeurs_vos_url
    click_on "New photobooks editeurs vo"

    fill_in "Name", with: @_photobooks_editeurs_vo.name
    click_on "Create Photobooks editeurs vo"

    assert_text "Photobooks editeurs vo was successfully created"
    click_on "Back"
  end

  test "should update Photobooks editeurs vo" do
    visit _photobooks_editeurs_vo_url(@_photobooks_editeurs_vo)
    click_on "Edit this photobooks editeurs vo", match: :first

    fill_in "Name", with: @_photobooks_editeurs_vo.name
    click_on "Update Photobooks editeurs vo"

    assert_text "Photobooks editeurs vo was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks editeurs vo" do
    visit _photobooks_editeurs_vo_url(@_photobooks_editeurs_vo)
    click_on "Destroy this photobooks editeurs vo", match: :first

    assert_text "Photobooks editeurs vo was successfully destroyed"
  end
end
