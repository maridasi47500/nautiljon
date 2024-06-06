require "application_system_test_case"

class JeuxVideosLitteratureAsiatiquePlusTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_litterature_asiatique_plu = _jeux_videos_litterature_asiatique_plus(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_litterature_asiatique_plus_url
    assert_selector "h1", text: "Jeux videos litterature asiatique plus"
  end

  test "should create jeux videos litterature asiatique plu" do
    visit _jeux_videos_litterature_asiatique_plus_url
    click_on "New jeux videos litterature asiatique plu"

    fill_in "Name", with: @_jeux_videos_litterature_asiatique_plu.name
    click_on "Create Jeux videos litterature asiatique plu"

    assert_text "Jeux videos litterature asiatique plu was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos litterature asiatique plu" do
    visit _jeux_videos_litterature_asiatique_plu_url(@_jeux_videos_litterature_asiatique_plu)
    click_on "Edit this jeux videos litterature asiatique plu", match: :first

    fill_in "Name", with: @_jeux_videos_litterature_asiatique_plu.name
    click_on "Update Jeux videos litterature asiatique plu"

    assert_text "Jeux videos litterature asiatique plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos litterature asiatique plu" do
    visit _jeux_videos_litterature_asiatique_plu_url(@_jeux_videos_litterature_asiatique_plu)
    click_on "Destroy this jeux videos litterature asiatique plu", match: :first

    assert_text "Jeux videos litterature asiatique plu was successfully destroyed"
  end
end
