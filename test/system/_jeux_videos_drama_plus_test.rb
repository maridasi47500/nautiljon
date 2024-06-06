require "application_system_test_case"

class JeuxVideosDramaPlusTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_drama_plu = _jeux_videos_drama_plus(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_drama_plus_url
    assert_selector "h1", text: "Jeux videos drama plus"
  end

  test "should create jeux videos drama plu" do
    visit _jeux_videos_drama_plus_url
    click_on "New jeux videos drama plu"

    fill_in "Name", with: @_jeux_videos_drama_plu.name
    click_on "Create Jeux videos drama plu"

    assert_text "Jeux videos drama plu was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos drama plu" do
    visit _jeux_videos_drama_plu_url(@_jeux_videos_drama_plu)
    click_on "Edit this jeux videos drama plu", match: :first

    fill_in "Name", with: @_jeux_videos_drama_plu.name
    click_on "Update Jeux videos drama plu"

    assert_text "Jeux videos drama plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos drama plu" do
    visit _jeux_videos_drama_plu_url(@_jeux_videos_drama_plu)
    click_on "Destroy this jeux videos drama plu", match: :first

    assert_text "Jeux videos drama plu was successfully destroyed"
  end
end
