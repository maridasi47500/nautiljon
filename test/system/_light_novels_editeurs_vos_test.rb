require "application_system_test_case"

class LightNovelsEditeursVosTest < ApplicationSystemTestCase
  setup do
    @_light_novels_editeurs_vo = _light_novels_editeurs_vos(:one)
  end

  test "visiting the index" do
    visit _light_novels_editeurs_vos_url
    assert_selector "h1", text: "Light novels editeurs vos"
  end

  test "should create light novels editeurs vo" do
    visit _light_novels_editeurs_vos_url
    click_on "New light novels editeurs vo"

    fill_in "Name", with: @_light_novels_editeurs_vo.name
    click_on "Create Light novels editeurs vo"

    assert_text "Light novels editeurs vo was successfully created"
    click_on "Back"
  end

  test "should update Light novels editeurs vo" do
    visit _light_novels_editeurs_vo_url(@_light_novels_editeurs_vo)
    click_on "Edit this light novels editeurs vo", match: :first

    fill_in "Name", with: @_light_novels_editeurs_vo.name
    click_on "Update Light novels editeurs vo"

    assert_text "Light novels editeurs vo was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels editeurs vo" do
    visit _light_novels_editeurs_vo_url(@_light_novels_editeurs_vo)
    click_on "Destroy this light novels editeurs vo", match: :first

    assert_text "Light novels editeurs vo was successfully destroyed"
  end
end
