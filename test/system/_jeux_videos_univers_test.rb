require "application_system_test_case"

class JeuxVideosUniversTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_univer = _jeux_videos_univers(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_univers_url
    assert_selector "h1", text: "Jeux videos univers"
  end

  test "should create jeux videos univer" do
    visit _jeux_videos_univers_url
    click_on "New jeux videos univer"

    fill_in "Name", with: @_jeux_videos_univer.name
    click_on "Create Jeux videos univer"

    assert_text "Jeux videos univer was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos univer" do
    visit _jeux_videos_univer_url(@_jeux_videos_univer)
    click_on "Edit this jeux videos univer", match: :first

    fill_in "Name", with: @_jeux_videos_univer.name
    click_on "Update Jeux videos univer"

    assert_text "Jeux videos univer was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos univer" do
    visit _jeux_videos_univer_url(@_jeux_videos_univer)
    click_on "Destroy this jeux videos univer", match: :first

    assert_text "Jeux videos univer was successfully destroyed"
  end
end
