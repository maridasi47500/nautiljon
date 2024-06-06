require "application_system_test_case"

class JeuxVideosAnimesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_anime = _jeux_videos_animes(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_animes_url
    assert_selector "h1", text: "Jeux videos animes"
  end

  test "should create jeux videos anime" do
    visit _jeux_videos_animes_url
    click_on "New jeux videos anime"

    fill_in "Name", with: @_jeux_videos_anime.name
    click_on "Create Jeux videos anime"

    assert_text "Jeux videos anime was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos anime" do
    visit _jeux_videos_anime_url(@_jeux_videos_anime)
    click_on "Edit this jeux videos anime", match: :first

    fill_in "Name", with: @_jeux_videos_anime.name
    click_on "Update Jeux videos anime"

    assert_text "Jeux videos anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos anime" do
    visit _jeux_videos_anime_url(@_jeux_videos_anime)
    click_on "Destroy this jeux videos anime", match: :first

    assert_text "Jeux videos anime was successfully destroyed"
  end
end
