require "application_system_test_case"

class JeuxVideosAmsTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_am = _jeux_videos_ams(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_ams_url
    assert_selector "h1", text: "Jeux videos ams"
  end

  test "should create jeux videos am" do
    visit _jeux_videos_ams_url
    click_on "New jeux videos am"

    fill_in "Name", with: @_jeux_videos_am.name
    click_on "Create Jeux videos am"

    assert_text "Jeux videos am was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos am" do
    visit _jeux_videos_am_url(@_jeux_videos_am)
    click_on "Edit this jeux videos am", match: :first

    fill_in "Name", with: @_jeux_videos_am.name
    click_on "Update Jeux videos am"

    assert_text "Jeux videos am was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos am" do
    visit _jeux_videos_am_url(@_jeux_videos_am)
    click_on "Destroy this jeux videos am", match: :first

    assert_text "Jeux videos am was successfully destroyed"
  end
end
