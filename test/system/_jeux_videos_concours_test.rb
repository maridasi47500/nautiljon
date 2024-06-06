require "application_system_test_case"

class JeuxVideosConcoursTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_concour = _jeux_videos_concours(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_concours_url
    assert_selector "h1", text: "Jeux videos concours"
  end

  test "should create jeux videos concour" do
    visit _jeux_videos_concours_url
    click_on "New jeux videos concour"

    fill_in "Name", with: @_jeux_videos_concour.name
    click_on "Create Jeux videos concour"

    assert_text "Jeux videos concour was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos concour" do
    visit _jeux_videos_concour_url(@_jeux_videos_concour)
    click_on "Edit this jeux videos concour", match: :first

    fill_in "Name", with: @_jeux_videos_concour.name
    click_on "Update Jeux videos concour"

    assert_text "Jeux videos concour was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos concour" do
    visit _jeux_videos_concour_url(@_jeux_videos_concour)
    click_on "Destroy this jeux videos concour", match: :first

    assert_text "Jeux videos concour was successfully destroyed"
  end
end
