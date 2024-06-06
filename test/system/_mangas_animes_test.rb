require "application_system_test_case"

class MangasAnimesTest < ApplicationSystemTestCase
  setup do
    @_mangas_anime = _mangas_animes(:one)
  end

  test "visiting the index" do
    visit _mangas_animes_url
    assert_selector "h1", text: "Mangas animes"
  end

  test "should create mangas anime" do
    visit _mangas_animes_url
    click_on "New mangas anime"

    fill_in "Name", with: @_mangas_anime.name
    click_on "Create Mangas anime"

    assert_text "Mangas anime was successfully created"
    click_on "Back"
  end

  test "should update Mangas anime" do
    visit _mangas_anime_url(@_mangas_anime)
    click_on "Edit this mangas anime", match: :first

    fill_in "Name", with: @_mangas_anime.name
    click_on "Update Mangas anime"

    assert_text "Mangas anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas anime" do
    visit _mangas_anime_url(@_mangas_anime)
    click_on "Destroy this mangas anime", match: :first

    assert_text "Mangas anime was successfully destroyed"
  end
end
