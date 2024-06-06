require "application_system_test_case"

class LightNovelsAnimePlusTest < ApplicationSystemTestCase
  setup do
    @_light_novels_anime_plu = _light_novels_anime_plus(:one)
  end

  test "visiting the index" do
    visit _light_novels_anime_plus_url
    assert_selector "h1", text: "Light novels anime plus"
  end

  test "should create light novels anime plu" do
    visit _light_novels_anime_plus_url
    click_on "New light novels anime plu"

    fill_in "Name", with: @_light_novels_anime_plu.name
    click_on "Create Light novels anime plu"

    assert_text "Light novels anime plu was successfully created"
    click_on "Back"
  end

  test "should update Light novels anime plu" do
    visit _light_novels_anime_plu_url(@_light_novels_anime_plu)
    click_on "Edit this light novels anime plu", match: :first

    fill_in "Name", with: @_light_novels_anime_plu.name
    click_on "Update Light novels anime plu"

    assert_text "Light novels anime plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels anime plu" do
    visit _light_novels_anime_plu_url(@_light_novels_anime_plu)
    click_on "Destroy this light novels anime plu", match: :first

    assert_text "Light novels anime plu was successfully destroyed"
  end
end
