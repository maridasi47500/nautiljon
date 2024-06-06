require "application_system_test_case"

class LightNovelsDramaPlusTest < ApplicationSystemTestCase
  setup do
    @_light_novels_drama_plu = _light_novels_drama_plus(:one)
  end

  test "visiting the index" do
    visit _light_novels_drama_plus_url
    assert_selector "h1", text: "Light novels drama plus"
  end

  test "should create light novels drama plu" do
    visit _light_novels_drama_plus_url
    click_on "New light novels drama plu"

    fill_in "Name", with: @_light_novels_drama_plu.name
    click_on "Create Light novels drama plu"

    assert_text "Light novels drama plu was successfully created"
    click_on "Back"
  end

  test "should update Light novels drama plu" do
    visit _light_novels_drama_plu_url(@_light_novels_drama_plu)
    click_on "Edit this light novels drama plu", match: :first

    fill_in "Name", with: @_light_novels_drama_plu.name
    click_on "Update Light novels drama plu"

    assert_text "Light novels drama plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels drama plu" do
    visit _light_novels_drama_plu_url(@_light_novels_drama_plu)
    click_on "Destroy this light novels drama plu", match: :first

    assert_text "Light novels drama plu was successfully destroyed"
  end
end
