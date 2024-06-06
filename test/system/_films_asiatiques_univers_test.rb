require "application_system_test_case"

class FilmsAsiatiquesUniversTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_univer = _films_asiatiques_univers(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_univers_url
    assert_selector "h1", text: "Films asiatiques univers"
  end

  test "should create films asiatiques univer" do
    visit _films_asiatiques_univers_url
    click_on "New films asiatiques univer"

    fill_in "Name", with: @_films_asiatiques_univer.name
    click_on "Create Films asiatiques univer"

    assert_text "Films asiatiques univer was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques univer" do
    visit _films_asiatiques_univer_url(@_films_asiatiques_univer)
    click_on "Edit this films asiatiques univer", match: :first

    fill_in "Name", with: @_films_asiatiques_univer.name
    click_on "Update Films asiatiques univer"

    assert_text "Films asiatiques univer was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques univer" do
    visit _films_asiatiques_univer_url(@_films_asiatiques_univer)
    click_on "Destroy this films asiatiques univer", match: :first

    assert_text "Films asiatiques univer was successfully destroyed"
  end
end
