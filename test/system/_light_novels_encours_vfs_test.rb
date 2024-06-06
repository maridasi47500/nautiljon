require "application_system_test_case"

class LightNovelsEncoursVfsTest < ApplicationSystemTestCase
  setup do
    @_light_novels_encours_vf = _light_novels_encours_vfs(:one)
  end

  test "visiting the index" do
    visit _light_novels_encours_vfs_url
    assert_selector "h1", text: "Light novels encours vfs"
  end

  test "should create light novels encours vf" do
    visit _light_novels_encours_vfs_url
    click_on "New light novels encours vf"

    fill_in "Name", with: @_light_novels_encours_vf.name
    click_on "Create Light novels encours vf"

    assert_text "Light novels encours vf was successfully created"
    click_on "Back"
  end

  test "should update Light novels encours vf" do
    visit _light_novels_encours_vf_url(@_light_novels_encours_vf)
    click_on "Edit this light novels encours vf", match: :first

    fill_in "Name", with: @_light_novels_encours_vf.name
    click_on "Update Light novels encours vf"

    assert_text "Light novels encours vf was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels encours vf" do
    visit _light_novels_encours_vf_url(@_light_novels_encours_vf)
    click_on "Destroy this light novels encours vf", match: :first

    assert_text "Light novels encours vf was successfully destroyed"
  end
end
