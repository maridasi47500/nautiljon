require "application_system_test_case"

class DramasEditeursVfsTest < ApplicationSystemTestCase
  setup do
    @_dramas_editeurs_vf = _dramas_editeurs_vfs(:one)
  end

  test "visiting the index" do
    visit _dramas_editeurs_vfs_url
    assert_selector "h1", text: "Dramas editeurs vfs"
  end

  test "should create dramas editeurs vf" do
    visit _dramas_editeurs_vfs_url
    click_on "New dramas editeurs vf"

    fill_in "Name", with: @_dramas_editeurs_vf.name
    click_on "Create Dramas editeurs vf"

    assert_text "Dramas editeurs vf was successfully created"
    click_on "Back"
  end

  test "should update Dramas editeurs vf" do
    visit _dramas_editeurs_vf_url(@_dramas_editeurs_vf)
    click_on "Edit this dramas editeurs vf", match: :first

    fill_in "Name", with: @_dramas_editeurs_vf.name
    click_on "Update Dramas editeurs vf"

    assert_text "Dramas editeurs vf was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas editeurs vf" do
    visit _dramas_editeurs_vf_url(@_dramas_editeurs_vf)
    click_on "Destroy this dramas editeurs vf", match: :first

    assert_text "Dramas editeurs vf was successfully destroyed"
  end
end
