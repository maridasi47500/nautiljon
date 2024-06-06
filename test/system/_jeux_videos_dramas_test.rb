require "application_system_test_case"

class JeuxVideosDramasTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_drama = _jeux_videos_dramas(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_dramas_url
    assert_selector "h1", text: "Jeux videos dramas"
  end

  test "should create jeux videos drama" do
    visit _jeux_videos_dramas_url
    click_on "New jeux videos drama"

    fill_in "Name", with: @_jeux_videos_drama.name
    click_on "Create Jeux videos drama"

    assert_text "Jeux videos drama was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos drama" do
    visit _jeux_videos_drama_url(@_jeux_videos_drama)
    click_on "Edit this jeux videos drama", match: :first

    fill_in "Name", with: @_jeux_videos_drama.name
    click_on "Update Jeux videos drama"

    assert_text "Jeux videos drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos drama" do
    visit _jeux_videos_drama_url(@_jeux_videos_drama)
    click_on "Destroy this jeux videos drama", match: :first

    assert_text "Jeux videos drama was successfully destroyed"
  end
end
