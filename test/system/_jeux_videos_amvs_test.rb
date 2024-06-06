require "application_system_test_case"

class JeuxVideosAmvsTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_amv = _jeux_videos_amvs(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_amvs_url
    assert_selector "h1", text: "Jeux videos amvs"
  end

  test "should create jeux videos amv" do
    visit _jeux_videos_amvs_url
    click_on "New jeux videos amv"

    fill_in "Name", with: @_jeux_videos_amv.name
    click_on "Create Jeux videos amv"

    assert_text "Jeux videos amv was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos amv" do
    visit _jeux_videos_amv_url(@_jeux_videos_amv)
    click_on "Edit this jeux videos amv", match: :first

    fill_in "Name", with: @_jeux_videos_amv.name
    click_on "Update Jeux videos amv"

    assert_text "Jeux videos amv was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos amv" do
    visit _jeux_videos_amv_url(@_jeux_videos_amv)
    click_on "Destroy this jeux videos amv", match: :first

    assert_text "Jeux videos amv was successfully destroyed"
  end
end
