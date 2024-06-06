require "application_system_test_case"

class LightNovelsMangasTest < ApplicationSystemTestCase
  setup do
    @_light_novels_manga = _light_novels_mangas(:one)
  end

  test "visiting the index" do
    visit _light_novels_mangas_url
    assert_selector "h1", text: "Light novels mangas"
  end

  test "should create light novels manga" do
    visit _light_novels_mangas_url
    click_on "New light novels manga"

    fill_in "Name", with: @_light_novels_manga.name
    click_on "Create Light novels manga"

    assert_text "Light novels manga was successfully created"
    click_on "Back"
  end

  test "should update Light novels manga" do
    visit _light_novels_manga_url(@_light_novels_manga)
    click_on "Edit this light novels manga", match: :first

    fill_in "Name", with: @_light_novels_manga.name
    click_on "Update Light novels manga"

    assert_text "Light novels manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels manga" do
    visit _light_novels_manga_url(@_light_novels_manga)
    click_on "Destroy this light novels manga", match: :first

    assert_text "Light novels manga was successfully destroyed"
  end
end
