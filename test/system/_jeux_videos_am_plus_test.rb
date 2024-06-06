require "application_system_test_case"

class JeuxVideosAmPlusTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_am_plu = _jeux_videos_am_plus(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_am_plus_url
    assert_selector "h1", text: "Jeux videos am plus"
  end

  test "should create jeux videos am plu" do
    visit _jeux_videos_am_plus_url
    click_on "New jeux videos am plu"

    fill_in "Name", with: @_jeux_videos_am_plu.name
    click_on "Create Jeux videos am plu"

    assert_text "Jeux videos am plu was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos am plu" do
    visit _jeux_videos_am_plu_url(@_jeux_videos_am_plu)
    click_on "Edit this jeux videos am plu", match: :first

    fill_in "Name", with: @_jeux_videos_am_plu.name
    click_on "Update Jeux videos am plu"

    assert_text "Jeux videos am plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos am plu" do
    visit _jeux_videos_am_plu_url(@_jeux_videos_am_plu)
    click_on "Destroy this jeux videos am plu", match: :first

    assert_text "Jeux videos am plu was successfully destroyed"
  end
end
