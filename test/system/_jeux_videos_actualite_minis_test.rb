require "application_system_test_case"

class JeuxVideosActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_actualite_mini = _jeux_videos_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_actualite_minis_url
    assert_selector "h1", text: "Jeux videos actualite minis"
  end

  test "should create jeux videos actualite mini" do
    visit _jeux_videos_actualite_minis_url
    click_on "New jeux videos actualite mini"

    fill_in "Name", with: @_jeux_videos_actualite_mini.name
    click_on "Create Jeux videos actualite mini"

    assert_text "Jeux videos actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos actualite mini" do
    visit _jeux_videos_actualite_mini_url(@_jeux_videos_actualite_mini)
    click_on "Edit this jeux videos actualite mini", match: :first

    fill_in "Name", with: @_jeux_videos_actualite_mini.name
    click_on "Update Jeux videos actualite mini"

    assert_text "Jeux videos actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos actualite mini" do
    visit _jeux_videos_actualite_mini_url(@_jeux_videos_actualite_mini)
    click_on "Destroy this jeux videos actualite mini", match: :first

    assert_text "Jeux videos actualite mini was successfully destroyed"
  end
end
