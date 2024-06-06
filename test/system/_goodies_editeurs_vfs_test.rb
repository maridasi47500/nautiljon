require "application_system_test_case"

class GoodiesEditeursVfsTest < ApplicationSystemTestCase
  setup do
    @_goodies_editeurs_vf = _goodies_editeurs_vfs(:one)
  end

  test "visiting the index" do
    visit _goodies_editeurs_vfs_url
    assert_selector "h1", text: "Goodies editeurs vfs"
  end

  test "should create goodies editeurs vf" do
    visit _goodies_editeurs_vfs_url
    click_on "New goodies editeurs vf"

    fill_in "Name", with: @_goodies_editeurs_vf.name
    click_on "Create Goodies editeurs vf"

    assert_text "Goodies editeurs vf was successfully created"
    click_on "Back"
  end

  test "should update Goodies editeurs vf" do
    visit _goodies_editeurs_vf_url(@_goodies_editeurs_vf)
    click_on "Edit this goodies editeurs vf", match: :first

    fill_in "Name", with: @_goodies_editeurs_vf.name
    click_on "Update Goodies editeurs vf"

    assert_text "Goodies editeurs vf was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies editeurs vf" do
    visit _goodies_editeurs_vf_url(@_goodies_editeurs_vf)
    click_on "Destroy this goodies editeurs vf", match: :first

    assert_text "Goodies editeurs vf was successfully destroyed"
  end
end
