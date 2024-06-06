require "application_system_test_case"

class LivresAnimesTest < ApplicationSystemTestCase
  setup do
    @_livres_anime = _livres_animes(:one)
  end

  test "visiting the index" do
    visit _livres_animes_url
    assert_selector "h1", text: "Livres animes"
  end

  test "should create livres anime" do
    visit _livres_animes_url
    click_on "New livres anime"

    fill_in "Name", with: @_livres_anime.name
    click_on "Create Livres anime"

    assert_text "Livres anime was successfully created"
    click_on "Back"
  end

  test "should update Livres anime" do
    visit _livres_anime_url(@_livres_anime)
    click_on "Edit this livres anime", match: :first

    fill_in "Name", with: @_livres_anime.name
    click_on "Update Livres anime"

    assert_text "Livres anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres anime" do
    visit _livres_anime_url(@_livres_anime)
    click_on "Destroy this livres anime", match: :first

    assert_text "Livres anime was successfully destroyed"
  end
end
