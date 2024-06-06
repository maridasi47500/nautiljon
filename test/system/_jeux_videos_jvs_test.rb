require "application_system_test_case"

class JeuxVideosJvsTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_jv = _jeux_videos_jvs(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_jvs_url
    assert_selector "h1", text: "Jeux videos jvs"
  end

  test "should create jeux videos jv" do
    visit _jeux_videos_jvs_url
    click_on "New jeux videos jv"

    fill_in "Name", with: @_jeux_videos_jv.name
    click_on "Create Jeux videos jv"

    assert_text "Jeux videos jv was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos jv" do
    visit _jeux_videos_jv_url(@_jeux_videos_jv)
    click_on "Edit this jeux videos jv", match: :first

    fill_in "Name", with: @_jeux_videos_jv.name
    click_on "Update Jeux videos jv"

    assert_text "Jeux videos jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos jv" do
    visit _jeux_videos_jv_url(@_jeux_videos_jv)
    click_on "Destroy this jeux videos jv", match: :first

    assert_text "Jeux videos jv was successfully destroyed"
  end
end
