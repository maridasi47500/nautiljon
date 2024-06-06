require "application_system_test_case"

class JeuxVideosLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_litterature_asiatique = _jeux_videos_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_litterature_asiatiques_url
    assert_selector "h1", text: "Jeux videos litterature asiatiques"
  end

  test "should create jeux videos litterature asiatique" do
    visit _jeux_videos_litterature_asiatiques_url
    click_on "New jeux videos litterature asiatique"

    fill_in "Name", with: @_jeux_videos_litterature_asiatique.name
    click_on "Create Jeux videos litterature asiatique"

    assert_text "Jeux videos litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos litterature asiatique" do
    visit _jeux_videos_litterature_asiatique_url(@_jeux_videos_litterature_asiatique)
    click_on "Edit this jeux videos litterature asiatique", match: :first

    fill_in "Name", with: @_jeux_videos_litterature_asiatique.name
    click_on "Update Jeux videos litterature asiatique"

    assert_text "Jeux videos litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos litterature asiatique" do
    visit _jeux_videos_litterature_asiatique_url(@_jeux_videos_litterature_asiatique)
    click_on "Destroy this jeux videos litterature asiatique", match: :first

    assert_text "Jeux videos litterature asiatique was successfully destroyed"
  end
end
