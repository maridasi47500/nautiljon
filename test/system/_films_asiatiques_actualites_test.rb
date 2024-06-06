require "application_system_test_case"

class FilmsAsiatiquesActualitesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_actualite = _films_asiatiques_actualites(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_actualites_url
    assert_selector "h1", text: "Films asiatiques actualites"
  end

  test "should create films asiatiques actualite" do
    visit _films_asiatiques_actualites_url
    click_on "New films asiatiques actualite"

    fill_in "Name", with: @_films_asiatiques_actualite.name
    click_on "Create Films asiatiques actualite"

    assert_text "Films asiatiques actualite was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques actualite" do
    visit _films_asiatiques_actualite_url(@_films_asiatiques_actualite)
    click_on "Edit this films asiatiques actualite", match: :first

    fill_in "Name", with: @_films_asiatiques_actualite.name
    click_on "Update Films asiatiques actualite"

    assert_text "Films asiatiques actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques actualite" do
    visit _films_asiatiques_actualite_url(@_films_asiatiques_actualite)
    click_on "Destroy this films asiatiques actualite", match: :first

    assert_text "Films asiatiques actualite was successfully destroyed"
  end
end
