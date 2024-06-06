require "application_system_test_case"

class PersonnageDanimesDoubleurPeopleTest < ApplicationSystemTestCase
  setup do
    @_personnage_danimes_doubleur_person = _personnage_danimes_doubleur_people(:one)
  end

  test "visiting the index" do
    visit _personnage_danimes_doubleur_people_url
    assert_selector "h1", text: "Personnage danimes doubleur people"
  end

  test "should create personnage danimes doubleur person" do
    visit _personnage_danimes_doubleur_people_url
    click_on "New personnage danimes doubleur person"

    fill_in "Name", with: @_personnage_danimes_doubleur_person.name
    click_on "Create Personnage danimes doubleur person"

    assert_text "Personnage danimes doubleur person was successfully created"
    click_on "Back"
  end

  test "should update Personnage danimes doubleur person" do
    visit _personnage_danimes_doubleur_person_url(@_personnage_danimes_doubleur_person)
    click_on "Edit this personnage danimes doubleur person", match: :first

    fill_in "Name", with: @_personnage_danimes_doubleur_person.name
    click_on "Update Personnage danimes doubleur person"

    assert_text "Personnage danimes doubleur person was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage danimes doubleur person" do
    visit _personnage_danimes_doubleur_person_url(@_personnage_danimes_doubleur_person)
    click_on "Destroy this personnage danimes doubleur person", match: :first

    assert_text "Personnage danimes doubleur person was successfully destroyed"
  end
end
