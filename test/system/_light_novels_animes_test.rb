require "application_system_test_case"

class LightNovelsAnimesTest < ApplicationSystemTestCase
  setup do
    @_light_novels_anime = _light_novels_animes(:one)
  end

  test "visiting the index" do
    visit _light_novels_animes_url
    assert_selector "h1", text: "Light novels animes"
  end

  test "should create light novels anime" do
    visit _light_novels_animes_url
    click_on "New light novels anime"

    fill_in "Name", with: @_light_novels_anime.name
    click_on "Create Light novels anime"

    assert_text "Light novels anime was successfully created"
    click_on "Back"
  end

  test "should update Light novels anime" do
    visit _light_novels_anime_url(@_light_novels_anime)
    click_on "Edit this light novels anime", match: :first

    fill_in "Name", with: @_light_novels_anime.name
    click_on "Update Light novels anime"

    assert_text "Light novels anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels anime" do
    visit _light_novels_anime_url(@_light_novels_anime)
    click_on "Destroy this light novels anime", match: :first

    assert_text "Light novels anime was successfully destroyed"
  end
end
