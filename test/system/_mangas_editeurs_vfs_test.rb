require "application_system_test_case"

class MangasEditeursVfsTest < ApplicationSystemTestCase
  setup do
    @_mangas_editeurs_vf = _mangas_editeurs_vfs(:one)
  end

  test "visiting the index" do
    visit _mangas_editeurs_vfs_url
    assert_selector "h1", text: "Mangas editeurs vfs"
  end

  test "should create mangas editeurs vf" do
    visit _mangas_editeurs_vfs_url
    click_on "New mangas editeurs vf"

    fill_in "Name", with: @_mangas_editeurs_vf.name
    click_on "Create Mangas editeurs vf"

    assert_text "Mangas editeurs vf was successfully created"
    click_on "Back"
  end

  test "should update Mangas editeurs vf" do
    visit _mangas_editeurs_vf_url(@_mangas_editeurs_vf)
    click_on "Edit this mangas editeurs vf", match: :first

    fill_in "Name", with: @_mangas_editeurs_vf.name
    click_on "Update Mangas editeurs vf"

    assert_text "Mangas editeurs vf was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas editeurs vf" do
    visit _mangas_editeurs_vf_url(@_mangas_editeurs_vf)
    click_on "Destroy this mangas editeurs vf", match: :first

    assert_text "Mangas editeurs vf was successfully destroyed"
  end
end
