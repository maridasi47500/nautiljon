require "application_system_test_case"

class DoujinshisAnimesTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_anime = _doujinshis_animes(:one)
  end

  test "visiting the index" do
    visit _doujinshis_animes_url
    assert_selector "h1", text: "Doujinshis animes"
  end

  test "should create doujinshis anime" do
    visit _doujinshis_animes_url
    click_on "New doujinshis anime"

    fill_in "Name", with: @_doujinshis_anime.name
    click_on "Create Doujinshis anime"

    assert_text "Doujinshis anime was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis anime" do
    visit _doujinshis_anime_url(@_doujinshis_anime)
    click_on "Edit this doujinshis anime", match: :first

    fill_in "Name", with: @_doujinshis_anime.name
    click_on "Update Doujinshis anime"

    assert_text "Doujinshis anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis anime" do
    visit _doujinshis_anime_url(@_doujinshis_anime)
    click_on "Destroy this doujinshis anime", match: :first

    assert_text "Doujinshis anime was successfully destroyed"
  end
end
