require "application_system_test_case"

class FilmsAsiatiquesGeneriquesPeopleTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_generiques_person = _films_asiatiques_generiques_people(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_generiques_people_url
    assert_selector "h1", text: "Films asiatiques generiques people"
  end

  test "should create films asiatiques generiques person" do
    visit _films_asiatiques_generiques_people_url
    click_on "New films asiatiques generiques person"

    fill_in "Name", with: @_films_asiatiques_generiques_person.name
    click_on "Create Films asiatiques generiques person"

    assert_text "Films asiatiques generiques person was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques generiques person" do
    visit _films_asiatiques_generiques_person_url(@_films_asiatiques_generiques_person)
    click_on "Edit this films asiatiques generiques person", match: :first

    fill_in "Name", with: @_films_asiatiques_generiques_person.name
    click_on "Update Films asiatiques generiques person"

    assert_text "Films asiatiques generiques person was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques generiques person" do
    visit _films_asiatiques_generiques_person_url(@_films_asiatiques_generiques_person)
    click_on "Destroy this films asiatiques generiques person", match: :first

    assert_text "Films asiatiques generiques person was successfully destroyed"
  end
end
