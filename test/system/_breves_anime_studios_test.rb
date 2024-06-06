require "application_system_test_case"

class BrevesAnimeStudiosTest < ApplicationSystemTestCase
  setup do
    @_breves_anime_studio = _breves_anime_studios(:one)
  end

  test "visiting the index" do
    visit _breves_anime_studios_url
    assert_selector "h1", text: "Breves anime studios"
  end

  test "should create breves anime studio" do
    visit _breves_anime_studios_url
    click_on "New breves anime studio"

    fill_in "Name", with: @_breves_anime_studio.name
    click_on "Create Breves anime studio"

    assert_text "Breves anime studio was successfully created"
    click_on "Back"
  end

  test "should update Breves anime studio" do
    visit _breves_anime_studio_url(@_breves_anime_studio)
    click_on "Edit this breves anime studio", match: :first

    fill_in "Name", with: @_breves_anime_studio.name
    click_on "Update Breves anime studio"

    assert_text "Breves anime studio was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves anime studio" do
    visit _breves_anime_studio_url(@_breves_anime_studio)
    click_on "Destroy this breves anime studio", match: :first

    assert_text "Breves anime studio was successfully destroyed"
  end
end
