require "application_system_test_case"

class FilmsAsiatiquesGeneriquesParolesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_generiques_parole = _films_asiatiques_generiques_paroles(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_generiques_paroles_url
    assert_selector "h1", text: "Films asiatiques generiques paroles"
  end

  test "should create films asiatiques generiques parole" do
    visit _films_asiatiques_generiques_paroles_url
    click_on "New films asiatiques generiques parole"

    fill_in "Name", with: @_films_asiatiques_generiques_parole.name
    click_on "Create Films asiatiques generiques parole"

    assert_text "Films asiatiques generiques parole was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques generiques parole" do
    visit _films_asiatiques_generiques_parole_url(@_films_asiatiques_generiques_parole)
    click_on "Edit this films asiatiques generiques parole", match: :first

    fill_in "Name", with: @_films_asiatiques_generiques_parole.name
    click_on "Update Films asiatiques generiques parole"

    assert_text "Films asiatiques generiques parole was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques generiques parole" do
    visit _films_asiatiques_generiques_parole_url(@_films_asiatiques_generiques_parole)
    click_on "Destroy this films asiatiques generiques parole", match: :first

    assert_text "Films asiatiques generiques parole was successfully destroyed"
  end
end
