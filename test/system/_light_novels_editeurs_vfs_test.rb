require "application_system_test_case"

class LightNovelsEditeursVfsTest < ApplicationSystemTestCase
  setup do
    @_light_novels_editeurs_vf = _light_novels_editeurs_vfs(:one)
  end

  test "visiting the index" do
    visit _light_novels_editeurs_vfs_url
    assert_selector "h1", text: "Light novels editeurs vfs"
  end

  test "should create light novels editeurs vf" do
    visit _light_novels_editeurs_vfs_url
    click_on "New light novels editeurs vf"

    fill_in "Name", with: @_light_novels_editeurs_vf.name
    click_on "Create Light novels editeurs vf"

    assert_text "Light novels editeurs vf was successfully created"
    click_on "Back"
  end

  test "should update Light novels editeurs vf" do
    visit _light_novels_editeurs_vf_url(@_light_novels_editeurs_vf)
    click_on "Edit this light novels editeurs vf", match: :first

    fill_in "Name", with: @_light_novels_editeurs_vf.name
    click_on "Update Light novels editeurs vf"

    assert_text "Light novels editeurs vf was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels editeurs vf" do
    visit _light_novels_editeurs_vf_url(@_light_novels_editeurs_vf)
    click_on "Destroy this light novels editeurs vf", match: :first

    assert_text "Light novels editeurs vf was successfully destroyed"
  end
end
