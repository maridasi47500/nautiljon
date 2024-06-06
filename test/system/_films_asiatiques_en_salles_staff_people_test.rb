require "application_system_test_case"

class FilmsAsiatiquesEnSallesStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_staff_person = _films_asiatiques_en_salles_staff_people(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_staff_people_url
    assert_selector "h1", text: "Films asiatiques en salles staff people"
  end

  test "should create films asiatiques en salles staff person" do
    visit _films_asiatiques_en_salles_staff_people_url
    click_on "New films asiatiques en salles staff person"

    fill_in "Name", with: @_films_asiatiques_en_salles_staff_person.name
    click_on "Create Films asiatiques en salles staff person"

    assert_text "Films asiatiques en salles staff person was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles staff person" do
    visit _films_asiatiques_en_salles_staff_person_url(@_films_asiatiques_en_salles_staff_person)
    click_on "Edit this films asiatiques en salles staff person", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_staff_person.name
    click_on "Update Films asiatiques en salles staff person"

    assert_text "Films asiatiques en salles staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles staff person" do
    visit _films_asiatiques_en_salles_staff_person_url(@_films_asiatiques_en_salles_staff_person)
    click_on "Destroy this films asiatiques en salles staff person", match: :first

    assert_text "Films asiatiques en salles staff person was successfully destroyed"
  end
end
