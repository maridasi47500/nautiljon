require "application_system_test_case"

class FicheUniversPeopleTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_person = _fiche_univers_people(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_people_url
    assert_selector "h1", text: "Fiche univers people"
  end

  test "should create fiche univers person" do
    visit _fiche_univers_people_url
    click_on "New fiche univers person"

    fill_in "Name", with: @_fiche_univers_person.name
    click_on "Create Fiche univers person"

    assert_text "Fiche univers person was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers person" do
    visit _fiche_univers_person_url(@_fiche_univers_person)
    click_on "Edit this fiche univers person", match: :first

    fill_in "Name", with: @_fiche_univers_person.name
    click_on "Update Fiche univers person"

    assert_text "Fiche univers person was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers person" do
    visit _fiche_univers_person_url(@_fiche_univers_person)
    click_on "Destroy this fiche univers person", match: :first

    assert_text "Fiche univers person was successfully destroyed"
  end
end
