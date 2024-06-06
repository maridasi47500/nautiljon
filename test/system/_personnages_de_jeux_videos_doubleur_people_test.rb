require "application_system_test_case"

class PersonnagesDeJeuxVideosDoubleurPeopleTest < ApplicationSystemTestCase
  setup do
    @_personnages_de_jeux_videos_doubleur_person = _personnages_de_jeux_videos_doubleur_people(:one)
  end

  test "visiting the index" do
    visit _personnages_de_jeux_videos_doubleur_people_url
    assert_selector "h1", text: "Personnages de jeux videos doubleur people"
  end

  test "should create personnages de jeux videos doubleur person" do
    visit _personnages_de_jeux_videos_doubleur_people_url
    click_on "New personnages de jeux videos doubleur person"

    fill_in "Name", with: @_personnages_de_jeux_videos_doubleur_person.name
    click_on "Create Personnages de jeux videos doubleur person"

    assert_text "Personnages de jeux videos doubleur person was successfully created"
    click_on "Back"
  end

  test "should update Personnages de jeux videos doubleur person" do
    visit _personnages_de_jeux_videos_doubleur_person_url(@_personnages_de_jeux_videos_doubleur_person)
    click_on "Edit this personnages de jeux videos doubleur person", match: :first

    fill_in "Name", with: @_personnages_de_jeux_videos_doubleur_person.name
    click_on "Update Personnages de jeux videos doubleur person"

    assert_text "Personnages de jeux videos doubleur person was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnages de jeux videos doubleur person" do
    visit _personnages_de_jeux_videos_doubleur_person_url(@_personnages_de_jeux_videos_doubleur_person)
    click_on "Destroy this personnages de jeux videos doubleur person", match: :first

    assert_text "Personnages de jeux videos doubleur person was successfully destroyed"
  end
end
