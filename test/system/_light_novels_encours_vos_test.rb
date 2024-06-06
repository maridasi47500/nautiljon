require "application_system_test_case"

class LightNovelsEncoursVosTest < ApplicationSystemTestCase
  setup do
    @_light_novels_encours_vo = _light_novels_encours_vos(:one)
  end

  test "visiting the index" do
    visit _light_novels_encours_vos_url
    assert_selector "h1", text: "Light novels encours vos"
  end

  test "should create light novels encours vo" do
    visit _light_novels_encours_vos_url
    click_on "New light novels encours vo"

    fill_in "Name", with: @_light_novels_encours_vo.name
    click_on "Create Light novels encours vo"

    assert_text "Light novels encours vo was successfully created"
    click_on "Back"
  end

  test "should update Light novels encours vo" do
    visit _light_novels_encours_vo_url(@_light_novels_encours_vo)
    click_on "Edit this light novels encours vo", match: :first

    fill_in "Name", with: @_light_novels_encours_vo.name
    click_on "Update Light novels encours vo"

    assert_text "Light novels encours vo was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels encours vo" do
    visit _light_novels_encours_vo_url(@_light_novels_encours_vo)
    click_on "Destroy this light novels encours vo", match: :first

    assert_text "Light novels encours vo was successfully destroyed"
  end
end
