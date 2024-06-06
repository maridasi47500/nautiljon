require "application_system_test_case"

class JeuxVideosAnimePlusTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_anime_plu = _jeux_videos_anime_plus(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_anime_plus_url
    assert_selector "h1", text: "Jeux videos anime plus"
  end

  test "should create jeux videos anime plu" do
    visit _jeux_videos_anime_plus_url
    click_on "New jeux videos anime plu"

    fill_in "Name", with: @_jeux_videos_anime_plu.name
    click_on "Create Jeux videos anime plu"

    assert_text "Jeux videos anime plu was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos anime plu" do
    visit _jeux_videos_anime_plu_url(@_jeux_videos_anime_plu)
    click_on "Edit this jeux videos anime plu", match: :first

    fill_in "Name", with: @_jeux_videos_anime_plu.name
    click_on "Update Jeux videos anime plu"

    assert_text "Jeux videos anime plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos anime plu" do
    visit _jeux_videos_anime_plu_url(@_jeux_videos_anime_plu)
    click_on "Destroy this jeux videos anime plu", match: :first

    assert_text "Jeux videos anime plu was successfully destroyed"
  end
end
