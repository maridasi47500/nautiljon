require "application_system_test_case"

class JeuxVideosPlateformesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_plateforme = _jeux_videos_plateformes(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_plateformes_url
    assert_selector "h1", text: "Jeux videos plateformes"
  end

  test "should create jeux videos plateforme" do
    visit _jeux_videos_plateformes_url
    click_on "New jeux videos plateforme"

    fill_in "Name", with: @_jeux_videos_plateforme.name
    click_on "Create Jeux videos plateforme"

    assert_text "Jeux videos plateforme was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos plateforme" do
    visit _jeux_videos_plateforme_url(@_jeux_videos_plateforme)
    click_on "Edit this jeux videos plateforme", match: :first

    fill_in "Name", with: @_jeux_videos_plateforme.name
    click_on "Update Jeux videos plateforme"

    assert_text "Jeux videos plateforme was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos plateforme" do
    visit _jeux_videos_plateforme_url(@_jeux_videos_plateforme)
    click_on "Destroy this jeux videos plateforme", match: :first

    assert_text "Jeux videos plateforme was successfully destroyed"
  end
end
