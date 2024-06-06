require "application_system_test_case"

class JeuxVideosPaysDatesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_pays_date = _jeux_videos_pays_dates(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_pays_dates_url
    assert_selector "h1", text: "Jeux videos pays dates"
  end

  test "should create jeux videos pays date" do
    visit _jeux_videos_pays_dates_url
    click_on "New jeux videos pays date"

    fill_in "Name", with: @_jeux_videos_pays_date.name
    click_on "Create Jeux videos pays date"

    assert_text "Jeux videos pays date was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos pays date" do
    visit _jeux_videos_pays_date_url(@_jeux_videos_pays_date)
    click_on "Edit this jeux videos pays date", match: :first

    fill_in "Name", with: @_jeux_videos_pays_date.name
    click_on "Update Jeux videos pays date"

    assert_text "Jeux videos pays date was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos pays date" do
    visit _jeux_videos_pays_date_url(@_jeux_videos_pays_date)
    click_on "Destroy this jeux videos pays date", match: :first

    assert_text "Jeux videos pays date was successfully destroyed"
  end
end
