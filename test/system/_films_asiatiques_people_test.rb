require "application_system_test_case"

class FilmsAsiatiquesPeopleTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_person = _films_asiatiques_people(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_people_url
    assert_selector "h1", text: "Films asiatiques people"
  end

  test "should create films asiatiques person" do
    visit _films_asiatiques_people_url
    click_on "New films asiatiques person"

    fill_in "Name", with: @_films_asiatiques_person.name
    click_on "Create Films asiatiques person"

    assert_text "Films asiatiques person was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques person" do
    visit _films_asiatiques_person_url(@_films_asiatiques_person)
    click_on "Edit this films asiatiques person", match: :first

    fill_in "Name", with: @_films_asiatiques_person.name
    click_on "Update Films asiatiques person"

    assert_text "Films asiatiques person was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques person" do
    visit _films_asiatiques_person_url(@_films_asiatiques_person)
    click_on "Destroy this films asiatiques person", match: :first

    assert_text "Films asiatiques person was successfully destroyed"
  end
end
