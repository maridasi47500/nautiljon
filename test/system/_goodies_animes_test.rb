require "application_system_test_case"

class GoodiesAnimesTest < ApplicationSystemTestCase
  setup do
    @_goodies_anime = _goodies_animes(:one)
  end

  test "visiting the index" do
    visit _goodies_animes_url
    assert_selector "h1", text: "Goodies animes"
  end

  test "should create goodies anime" do
    visit _goodies_animes_url
    click_on "New goodies anime"

    fill_in "Name", with: @_goodies_anime.name
    click_on "Create Goodies anime"

    assert_text "Goodies anime was successfully created"
    click_on "Back"
  end

  test "should update Goodies anime" do
    visit _goodies_anime_url(@_goodies_anime)
    click_on "Edit this goodies anime", match: :first

    fill_in "Name", with: @_goodies_anime.name
    click_on "Update Goodies anime"

    assert_text "Goodies anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies anime" do
    visit _goodies_anime_url(@_goodies_anime)
    click_on "Destroy this goodies anime", match: :first

    assert_text "Goodies anime was successfully destroyed"
  end
end
