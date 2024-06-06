require "application_system_test_case"

class PersonnagesDeJeuxVideosGoodiesTest < ApplicationSystemTestCase
  setup do
    @_personnages_de_jeux_videos_goody = _personnages_de_jeux_videos_goodies(:one)
  end

  test "visiting the index" do
    visit _personnages_de_jeux_videos_goodies_url
    assert_selector "h1", text: "Personnages de jeux videos goodies"
  end

  test "should create personnages de jeux videos goody" do
    visit _personnages_de_jeux_videos_goodies_url
    click_on "New personnages de jeux videos goody"

    fill_in "Name", with: @_personnages_de_jeux_videos_goody.name
    click_on "Create Personnages de jeux videos goody"

    assert_text "Personnages de jeux videos goody was successfully created"
    click_on "Back"
  end

  test "should update Personnages de jeux videos goody" do
    visit _personnages_de_jeux_videos_goody_url(@_personnages_de_jeux_videos_goody)
    click_on "Edit this personnages de jeux videos goody", match: :first

    fill_in "Name", with: @_personnages_de_jeux_videos_goody.name
    click_on "Update Personnages de jeux videos goody"

    assert_text "Personnages de jeux videos goody was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnages de jeux videos goody" do
    visit _personnages_de_jeux_videos_goody_url(@_personnages_de_jeux_videos_goody)
    click_on "Destroy this personnages de jeux videos goody", match: :first

    assert_text "Personnages de jeux videos goody was successfully destroyed"
  end
end
