require "application_system_test_case"

class JeuxVideosOstsTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_ost = _jeux_videos_osts(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_osts_url
    assert_selector "h1", text: "Jeux videos osts"
  end

  test "should create jeux videos ost" do
    visit _jeux_videos_osts_url
    click_on "New jeux videos ost"

    fill_in "Name", with: @_jeux_videos_ost.name
    click_on "Create Jeux videos ost"

    assert_text "Jeux videos ost was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos ost" do
    visit _jeux_videos_ost_url(@_jeux_videos_ost)
    click_on "Edit this jeux videos ost", match: :first

    fill_in "Name", with: @_jeux_videos_ost.name
    click_on "Update Jeux videos ost"

    assert_text "Jeux videos ost was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos ost" do
    visit _jeux_videos_ost_url(@_jeux_videos_ost)
    click_on "Destroy this jeux videos ost", match: :first

    assert_text "Jeux videos ost was successfully destroyed"
  end
end
