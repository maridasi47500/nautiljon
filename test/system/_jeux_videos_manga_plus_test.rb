require "application_system_test_case"

class JeuxVideosMangaPlusTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_manga_plu = _jeux_videos_manga_plus(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_manga_plus_url
    assert_selector "h1", text: "Jeux videos manga plus"
  end

  test "should create jeux videos manga plu" do
    visit _jeux_videos_manga_plus_url
    click_on "New jeux videos manga plu"

    fill_in "Name", with: @_jeux_videos_manga_plu.name
    click_on "Create Jeux videos manga plu"

    assert_text "Jeux videos manga plu was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos manga plu" do
    visit _jeux_videos_manga_plu_url(@_jeux_videos_manga_plu)
    click_on "Edit this jeux videos manga plu", match: :first

    fill_in "Name", with: @_jeux_videos_manga_plu.name
    click_on "Update Jeux videos manga plu"

    assert_text "Jeux videos manga plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos manga plu" do
    visit _jeux_videos_manga_plu_url(@_jeux_videos_manga_plu)
    click_on "Destroy this jeux videos manga plu", match: :first

    assert_text "Jeux videos manga plu was successfully destroyed"
  end
end
