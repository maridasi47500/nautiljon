require "application_system_test_case"

class PersonnagesDeJeuxVideosDoubleurRolesTest < ApplicationSystemTestCase
  setup do
    @_personnages_de_jeux_videos_doubleur_role = _personnages_de_jeux_videos_doubleur_roles(:one)
  end

  test "visiting the index" do
    visit _personnages_de_jeux_videos_doubleur_roles_url
    assert_selector "h1", text: "Personnages de jeux videos doubleur roles"
  end

  test "should create personnages de jeux videos doubleur role" do
    visit _personnages_de_jeux_videos_doubleur_roles_url
    click_on "New personnages de jeux videos doubleur role"

    fill_in "Name", with: @_personnages_de_jeux_videos_doubleur_role.name
    click_on "Create Personnages de jeux videos doubleur role"

    assert_text "Personnages de jeux videos doubleur role was successfully created"
    click_on "Back"
  end

  test "should update Personnages de jeux videos doubleur role" do
    visit _personnages_de_jeux_videos_doubleur_role_url(@_personnages_de_jeux_videos_doubleur_role)
    click_on "Edit this personnages de jeux videos doubleur role", match: :first

    fill_in "Name", with: @_personnages_de_jeux_videos_doubleur_role.name
    click_on "Update Personnages de jeux videos doubleur role"

    assert_text "Personnages de jeux videos doubleur role was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnages de jeux videos doubleur role" do
    visit _personnages_de_jeux_videos_doubleur_role_url(@_personnages_de_jeux_videos_doubleur_role)
    click_on "Destroy this personnages de jeux videos doubleur role", match: :first

    assert_text "Personnages de jeux videos doubleur role was successfully destroyed"
  end
end
