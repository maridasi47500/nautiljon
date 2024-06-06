require "application_system_test_case"

class JeuxVideosGroupesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_groupe = _jeux_videos_groupes(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_groupes_url
    assert_selector "h1", text: "Jeux videos groupes"
  end

  test "should create jeux videos groupe" do
    visit _jeux_videos_groupes_url
    click_on "New jeux videos groupe"

    fill_in "Name", with: @_jeux_videos_groupe.name
    click_on "Create Jeux videos groupe"

    assert_text "Jeux videos groupe was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos groupe" do
    visit _jeux_videos_groupe_url(@_jeux_videos_groupe)
    click_on "Edit this jeux videos groupe", match: :first

    fill_in "Name", with: @_jeux_videos_groupe.name
    click_on "Update Jeux videos groupe"

    assert_text "Jeux videos groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos groupe" do
    visit _jeux_videos_groupe_url(@_jeux_videos_groupe)
    click_on "Destroy this jeux videos groupe", match: :first

    assert_text "Jeux videos groupe was successfully destroyed"
  end
end
