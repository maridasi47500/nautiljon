require "application_system_test_case"

class DoujinsAnimesTest < ApplicationSystemTestCase
  setup do
    @_doujins_anime = _doujins_animes(:one)
  end

  test "visiting the index" do
    visit _doujins_animes_url
    assert_selector "h1", text: "Doujins animes"
  end

  test "should create doujins anime" do
    visit _doujins_animes_url
    click_on "New doujins anime"

    fill_in "Name", with: @_doujins_anime.name
    click_on "Create Doujins anime"

    assert_text "Doujins anime was successfully created"
    click_on "Back"
  end

  test "should update Doujins anime" do
    visit _doujins_anime_url(@_doujins_anime)
    click_on "Edit this doujins anime", match: :first

    fill_in "Name", with: @_doujins_anime.name
    click_on "Update Doujins anime"

    assert_text "Doujins anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins anime" do
    visit _doujins_anime_url(@_doujins_anime)
    click_on "Destroy this doujins anime", match: :first

    assert_text "Doujins anime was successfully destroyed"
  end
end
