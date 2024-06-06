require "application_system_test_case"

class JeuxVideosDoujinsTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_doujin = _jeux_videos_doujins(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_doujins_url
    assert_selector "h1", text: "Jeux videos doujins"
  end

  test "should create jeux videos doujin" do
    visit _jeux_videos_doujins_url
    click_on "New jeux videos doujin"

    fill_in "Name", with: @_jeux_videos_doujin.name
    click_on "Create Jeux videos doujin"

    assert_text "Jeux videos doujin was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos doujin" do
    visit _jeux_videos_doujin_url(@_jeux_videos_doujin)
    click_on "Edit this jeux videos doujin", match: :first

    fill_in "Name", with: @_jeux_videos_doujin.name
    click_on "Update Jeux videos doujin"

    assert_text "Jeux videos doujin was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos doujin" do
    visit _jeux_videos_doujin_url(@_jeux_videos_doujin)
    click_on "Destroy this jeux videos doujin", match: :first

    assert_text "Jeux videos doujin was successfully destroyed"
  end
end
