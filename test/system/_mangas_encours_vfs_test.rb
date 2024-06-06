require "application_system_test_case"

class MangasEncoursVfsTest < ApplicationSystemTestCase
  setup do
    @_mangas_encours_vf = _mangas_encours_vfs(:one)
  end

  test "visiting the index" do
    visit _mangas_encours_vfs_url
    assert_selector "h1", text: "Mangas encours vfs"
  end

  test "should create mangas encours vf" do
    visit _mangas_encours_vfs_url
    click_on "New mangas encours vf"

    fill_in "Name", with: @_mangas_encours_vf.name
    click_on "Create Mangas encours vf"

    assert_text "Mangas encours vf was successfully created"
    click_on "Back"
  end

  test "should update Mangas encours vf" do
    visit _mangas_encours_vf_url(@_mangas_encours_vf)
    click_on "Edit this mangas encours vf", match: :first

    fill_in "Name", with: @_mangas_encours_vf.name
    click_on "Update Mangas encours vf"

    assert_text "Mangas encours vf was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas encours vf" do
    visit _mangas_encours_vf_url(@_mangas_encours_vf)
    click_on "Destroy this mangas encours vf", match: :first

    assert_text "Mangas encours vf was successfully destroyed"
  end
end
