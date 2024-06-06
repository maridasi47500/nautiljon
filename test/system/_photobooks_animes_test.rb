require "application_system_test_case"

class PhotobooksAnimesTest < ApplicationSystemTestCase
  setup do
    @_photobooks_anime = _photobooks_animes(:one)
  end

  test "visiting the index" do
    visit _photobooks_animes_url
    assert_selector "h1", text: "Photobooks animes"
  end

  test "should create photobooks anime" do
    visit _photobooks_animes_url
    click_on "New photobooks anime"

    fill_in "Name", with: @_photobooks_anime.name
    click_on "Create Photobooks anime"

    assert_text "Photobooks anime was successfully created"
    click_on "Back"
  end

  test "should update Photobooks anime" do
    visit _photobooks_anime_url(@_photobooks_anime)
    click_on "Edit this photobooks anime", match: :first

    fill_in "Name", with: @_photobooks_anime.name
    click_on "Update Photobooks anime"

    assert_text "Photobooks anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks anime" do
    visit _photobooks_anime_url(@_photobooks_anime)
    click_on "Destroy this photobooks anime", match: :first

    assert_text "Photobooks anime was successfully destroyed"
  end
end
