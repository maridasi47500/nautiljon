require "application_system_test_case"

class JeuxVideosLnsTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_ln = _jeux_videos_lns(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_lns_url
    assert_selector "h1", text: "Jeux videos lns"
  end

  test "should create jeux videos ln" do
    visit _jeux_videos_lns_url
    click_on "New jeux videos ln"

    fill_in "Name", with: @_jeux_videos_ln.name
    click_on "Create Jeux videos ln"

    assert_text "Jeux videos ln was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos ln" do
    visit _jeux_videos_ln_url(@_jeux_videos_ln)
    click_on "Edit this jeux videos ln", match: :first

    fill_in "Name", with: @_jeux_videos_ln.name
    click_on "Update Jeux videos ln"

    assert_text "Jeux videos ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos ln" do
    visit _jeux_videos_ln_url(@_jeux_videos_ln)
    click_on "Destroy this jeux videos ln", match: :first

    assert_text "Jeux videos ln was successfully destroyed"
  end
end
