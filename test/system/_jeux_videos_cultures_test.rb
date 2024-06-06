require "application_system_test_case"

class JeuxVideosCulturesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_culture = _jeux_videos_cultures(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_cultures_url
    assert_selector "h1", text: "Jeux videos cultures"
  end

  test "should create jeux videos culture" do
    visit _jeux_videos_cultures_url
    click_on "New jeux videos culture"

    fill_in "Name", with: @_jeux_videos_culture.name
    click_on "Create Jeux videos culture"

    assert_text "Jeux videos culture was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos culture" do
    visit _jeux_videos_culture_url(@_jeux_videos_culture)
    click_on "Edit this jeux videos culture", match: :first

    fill_in "Name", with: @_jeux_videos_culture.name
    click_on "Update Jeux videos culture"

    assert_text "Jeux videos culture was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos culture" do
    visit _jeux_videos_culture_url(@_jeux_videos_culture)
    click_on "Destroy this jeux videos culture", match: :first

    assert_text "Jeux videos culture was successfully destroyed"
  end
end
