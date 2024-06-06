require "application_system_test_case"

class JeuxVideosDvdsTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_dvd = _jeux_videos_dvds(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_dvds_url
    assert_selector "h1", text: "Jeux videos dvds"
  end

  test "should create jeux videos dvd" do
    visit _jeux_videos_dvds_url
    click_on "New jeux videos dvd"

    fill_in "Name", with: @_jeux_videos_dvd.name
    click_on "Create Jeux videos dvd"

    assert_text "Jeux videos dvd was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos dvd" do
    visit _jeux_videos_dvd_url(@_jeux_videos_dvd)
    click_on "Edit this jeux videos dvd", match: :first

    fill_in "Name", with: @_jeux_videos_dvd.name
    click_on "Update Jeux videos dvd"

    assert_text "Jeux videos dvd was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos dvd" do
    visit _jeux_videos_dvd_url(@_jeux_videos_dvd)
    click_on "Destroy this jeux videos dvd", match: :first

    assert_text "Jeux videos dvd was successfully destroyed"
  end
end
