require "application_system_test_case"

class PersonnagesDeJeuxVideosJvsTest < ApplicationSystemTestCase
  setup do
    @_personnages_de_jeux_videos_jv = _personnages_de_jeux_videos_jvs(:one)
  end

  test "visiting the index" do
    visit _personnages_de_jeux_videos_jvs_url
    assert_selector "h1", text: "Personnages de jeux videos jvs"
  end

  test "should create personnages de jeux videos jv" do
    visit _personnages_de_jeux_videos_jvs_url
    click_on "New personnages de jeux videos jv"

    fill_in "Name", with: @_personnages_de_jeux_videos_jv.name
    click_on "Create Personnages de jeux videos jv"

    assert_text "Personnages de jeux videos jv was successfully created"
    click_on "Back"
  end

  test "should update Personnages de jeux videos jv" do
    visit _personnages_de_jeux_videos_jv_url(@_personnages_de_jeux_videos_jv)
    click_on "Edit this personnages de jeux videos jv", match: :first

    fill_in "Name", with: @_personnages_de_jeux_videos_jv.name
    click_on "Update Personnages de jeux videos jv"

    assert_text "Personnages de jeux videos jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnages de jeux videos jv" do
    visit _personnages_de_jeux_videos_jv_url(@_personnages_de_jeux_videos_jv)
    click_on "Destroy this personnages de jeux videos jv", match: :first

    assert_text "Personnages de jeux videos jv was successfully destroyed"
  end
end
