require "application_system_test_case"

class ArtbooksEditeursVfsTest < ApplicationSystemTestCase
  setup do
    @artbooks_editeurs_vf = artbooks_editeurs_vfs(:one)
  end

  test "visiting the index" do
    visit artbooks_editeurs_vfs_url
    assert_selector "h1", text: "Artbooks editeurs vfs"
  end

  test "should create artbooks editeurs vf" do
    visit artbooks_editeurs_vfs_url
    click_on "New artbooks editeurs vf"

    fill_in "Name", with: @artbooks_editeurs_vf.name
    click_on "Create Artbooks editeurs vf"

    assert_text "Artbooks editeurs vf was successfully created"
    click_on "Back"
  end

  test "should update Artbooks editeurs vf" do
    visit artbooks_editeurs_vf_url(@artbooks_editeurs_vf)
    click_on "Edit this artbooks editeurs vf", match: :first

    fill_in "Name", with: @artbooks_editeurs_vf.name
    click_on "Update Artbooks editeurs vf"

    assert_text "Artbooks editeurs vf was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks editeurs vf" do
    visit artbooks_editeurs_vf_url(@artbooks_editeurs_vf)
    click_on "Destroy this artbooks editeurs vf", match: :first

    assert_text "Artbooks editeurs vf was successfully destroyed"
  end
end
