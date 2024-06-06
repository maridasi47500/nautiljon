require "application_system_test_case"

class JeuxVideosSondagesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_sondage = _jeux_videos_sondages(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_sondages_url
    assert_selector "h1", text: "Jeux videos sondages"
  end

  test "should create jeux videos sondage" do
    visit _jeux_videos_sondages_url
    click_on "New jeux videos sondage"

    fill_in "Name", with: @_jeux_videos_sondage.name
    click_on "Create Jeux videos sondage"

    assert_text "Jeux videos sondage was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos sondage" do
    visit _jeux_videos_sondage_url(@_jeux_videos_sondage)
    click_on "Edit this jeux videos sondage", match: :first

    fill_in "Name", with: @_jeux_videos_sondage.name
    click_on "Update Jeux videos sondage"

    assert_text "Jeux videos sondage was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos sondage" do
    visit _jeux_videos_sondage_url(@_jeux_videos_sondage)
    click_on "Destroy this jeux videos sondage", match: :first

    assert_text "Jeux videos sondage was successfully destroyed"
  end
end
