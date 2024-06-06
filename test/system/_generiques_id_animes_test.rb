require "application_system_test_case"

class GeneriquesIdAnimesTest < ApplicationSystemTestCase
  setup do
    @_generiques_id_anime = _generiques_id_animes(:one)
  end

  test "visiting the index" do
    visit _generiques_id_animes_url
    assert_selector "h1", text: "Generiques id animes"
  end

  test "should create generiques id anime" do
    visit _generiques_id_animes_url
    click_on "New generiques id anime"

    fill_in "Name", with: @_generiques_id_anime.name
    click_on "Create Generiques id anime"

    assert_text "Generiques id anime was successfully created"
    click_on "Back"
  end

  test "should update Generiques id anime" do
    visit _generiques_id_anime_url(@_generiques_id_anime)
    click_on "Edit this generiques id anime", match: :first

    fill_in "Name", with: @_generiques_id_anime.name
    click_on "Update Generiques id anime"

    assert_text "Generiques id anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Generiques id anime" do
    visit _generiques_id_anime_url(@_generiques_id_anime)
    click_on "Destroy this generiques id anime", match: :first

    assert_text "Generiques id anime was successfully destroyed"
  end
end
