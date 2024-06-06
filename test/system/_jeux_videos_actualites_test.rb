require "application_system_test_case"

class JeuxVideosActualitesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_actualite = _jeux_videos_actualites(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_actualites_url
    assert_selector "h1", text: "Jeux videos actualites"
  end

  test "should create jeux videos actualite" do
    visit _jeux_videos_actualites_url
    click_on "New jeux videos actualite"

    fill_in "Name", with: @_jeux_videos_actualite.name
    click_on "Create Jeux videos actualite"

    assert_text "Jeux videos actualite was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos actualite" do
    visit _jeux_videos_actualite_url(@_jeux_videos_actualite)
    click_on "Edit this jeux videos actualite", match: :first

    fill_in "Name", with: @_jeux_videos_actualite.name
    click_on "Update Jeux videos actualite"

    assert_text "Jeux videos actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos actualite" do
    visit _jeux_videos_actualite_url(@_jeux_videos_actualite)
    click_on "Destroy this jeux videos actualite", match: :first

    assert_text "Jeux videos actualite was successfully destroyed"
  end
end
