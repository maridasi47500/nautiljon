require "application_system_test_case"

class DramasAnimesTest < ApplicationSystemTestCase
  setup do
    @_dramas_anime = _dramas_animes(:one)
  end

  test "visiting the index" do
    visit _dramas_animes_url
    assert_selector "h1", text: "Dramas animes"
  end

  test "should create dramas anime" do
    visit _dramas_animes_url
    click_on "New dramas anime"

    fill_in "Name", with: @_dramas_anime.name
    click_on "Create Dramas anime"

    assert_text "Dramas anime was successfully created"
    click_on "Back"
  end

  test "should update Dramas anime" do
    visit _dramas_anime_url(@_dramas_anime)
    click_on "Edit this dramas anime", match: :first

    fill_in "Name", with: @_dramas_anime.name
    click_on "Update Dramas anime"

    assert_text "Dramas anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas anime" do
    visit _dramas_anime_url(@_dramas_anime)
    click_on "Destroy this dramas anime", match: :first

    assert_text "Dramas anime was successfully destroyed"
  end
end
