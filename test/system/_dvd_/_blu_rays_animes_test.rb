require "application_system_test_case"

class Dvd::BluRaysAnimesTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_anime = _dvd___blu_rays_animes(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_animes_url
    assert_selector "h1", text: "Blu rays animes"
  end

  test "should create blu rays anime" do
    visit _dvd___blu_rays_animes_url
    click_on "New blu rays anime"

    fill_in "Name", with: @_dvd___blu_rays_anime.name
    click_on "Create Blu rays anime"

    assert_text "Blu rays anime was successfully created"
    click_on "Back"
  end

  test "should update Blu rays anime" do
    visit _dvd___blu_rays_anime_url(@_dvd___blu_rays_anime)
    click_on "Edit this blu rays anime", match: :first

    fill_in "Name", with: @_dvd___blu_rays_anime.name
    click_on "Update Blu rays anime"

    assert_text "Blu rays anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays anime" do
    visit _dvd___blu_rays_anime_url(@_dvd___blu_rays_anime)
    click_on "Destroy this blu rays anime", match: :first

    assert_text "Blu rays anime was successfully destroyed"
  end
end
