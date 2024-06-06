require "application_system_test_case"

class JeuxVideosJvPlusTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_jv_plu = _jeux_videos_jv_plus(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_jv_plus_url
    assert_selector "h1", text: "Jeux videos jv plus"
  end

  test "should create jeux videos jv plu" do
    visit _jeux_videos_jv_plus_url
    click_on "New jeux videos jv plu"

    fill_in "Name", with: @_jeux_videos_jv_plu.name
    click_on "Create Jeux videos jv plu"

    assert_text "Jeux videos jv plu was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos jv plu" do
    visit _jeux_videos_jv_plu_url(@_jeux_videos_jv_plu)
    click_on "Edit this jeux videos jv plu", match: :first

    fill_in "Name", with: @_jeux_videos_jv_plu.name
    click_on "Update Jeux videos jv plu"

    assert_text "Jeux videos jv plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos jv plu" do
    visit _jeux_videos_jv_plu_url(@_jeux_videos_jv_plu)
    click_on "Destroy this jeux videos jv plu", match: :first

    assert_text "Jeux videos jv plu was successfully destroyed"
  end
end
