require "application_system_test_case"

class PhotobooksEditeursVfsTest < ApplicationSystemTestCase
  setup do
    @_photobooks_editeurs_vf = _photobooks_editeurs_vfs(:one)
  end

  test "visiting the index" do
    visit _photobooks_editeurs_vfs_url
    assert_selector "h1", text: "Photobooks editeurs vfs"
  end

  test "should create photobooks editeurs vf" do
    visit _photobooks_editeurs_vfs_url
    click_on "New photobooks editeurs vf"

    fill_in "Name", with: @_photobooks_editeurs_vf.name
    click_on "Create Photobooks editeurs vf"

    assert_text "Photobooks editeurs vf was successfully created"
    click_on "Back"
  end

  test "should update Photobooks editeurs vf" do
    visit _photobooks_editeurs_vf_url(@_photobooks_editeurs_vf)
    click_on "Edit this photobooks editeurs vf", match: :first

    fill_in "Name", with: @_photobooks_editeurs_vf.name
    click_on "Update Photobooks editeurs vf"

    assert_text "Photobooks editeurs vf was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks editeurs vf" do
    visit _photobooks_editeurs_vf_url(@_photobooks_editeurs_vf)
    click_on "Destroy this photobooks editeurs vf", match: :first

    assert_text "Photobooks editeurs vf was successfully destroyed"
  end
end
