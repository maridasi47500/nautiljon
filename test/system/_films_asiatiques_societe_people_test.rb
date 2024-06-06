require "application_system_test_case"

class FilmsAsiatiquesSocietePeopleTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_societe_person = _films_asiatiques_societe_people(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_societe_people_url
    assert_selector "h1", text: "Films asiatiques societe people"
  end

  test "should create films asiatiques societe person" do
    visit _films_asiatiques_societe_people_url
    click_on "New films asiatiques societe person"

    fill_in "Name", with: @_films_asiatiques_societe_person.name
    click_on "Create Films asiatiques societe person"

    assert_text "Films asiatiques societe person was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques societe person" do
    visit _films_asiatiques_societe_person_url(@_films_asiatiques_societe_person)
    click_on "Edit this films asiatiques societe person", match: :first

    fill_in "Name", with: @_films_asiatiques_societe_person.name
    click_on "Update Films asiatiques societe person"

    assert_text "Films asiatiques societe person was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques societe person" do
    visit _films_asiatiques_societe_person_url(@_films_asiatiques_societe_person)
    click_on "Destroy this films asiatiques societe person", match: :first

    assert_text "Films asiatiques societe person was successfully destroyed"
  end
end
