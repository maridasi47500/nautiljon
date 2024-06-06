require "application_system_test_case"

class JeuxVideosEtatsTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_etat = _jeux_videos_etats(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_etats_url
    assert_selector "h1", text: "Jeux videos etats"
  end

  test "should create jeux videos etat" do
    visit _jeux_videos_etats_url
    click_on "New jeux videos etat"

    fill_in "Name", with: @_jeux_videos_etat.name
    click_on "Create Jeux videos etat"

    assert_text "Jeux videos etat was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos etat" do
    visit _jeux_videos_etat_url(@_jeux_videos_etat)
    click_on "Edit this jeux videos etat", match: :first

    fill_in "Name", with: @_jeux_videos_etat.name
    click_on "Update Jeux videos etat"

    assert_text "Jeux videos etat was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos etat" do
    visit _jeux_videos_etat_url(@_jeux_videos_etat)
    click_on "Destroy this jeux videos etat", match: :first

    assert_text "Jeux videos etat was successfully destroyed"
  end
end
