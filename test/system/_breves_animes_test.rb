require "application_system_test_case"

class BrevesAnimesTest < ApplicationSystemTestCase
  setup do
    @_breves_anime = _breves_animes(:one)
  end

  test "visiting the index" do
    visit _breves_animes_url
    assert_selector "h1", text: "Breves animes"
  end

  test "should create breves anime" do
    visit _breves_animes_url
    click_on "New breves anime"

    fill_in "Name", with: @_breves_anime.name
    click_on "Create Breves anime"

    assert_text "Breves anime was successfully created"
    click_on "Back"
  end

  test "should update Breves anime" do
    visit _breves_anime_url(@_breves_anime)
    click_on "Edit this breves anime", match: :first

    fill_in "Name", with: @_breves_anime.name
    click_on "Update Breves anime"

    assert_text "Breves anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves anime" do
    visit _breves_anime_url(@_breves_anime)
    click_on "Destroy this breves anime", match: :first

    assert_text "Breves anime was successfully destroyed"
  end
end
