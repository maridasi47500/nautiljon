require "application_system_test_case"

class FilmsAsiatiquesActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_actualite_mini = _films_asiatiques_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_actualite_minis_url
    assert_selector "h1", text: "Films asiatiques actualite minis"
  end

  test "should create films asiatiques actualite mini" do
    visit _films_asiatiques_actualite_minis_url
    click_on "New films asiatiques actualite mini"

    fill_in "Name", with: @_films_asiatiques_actualite_mini.name
    click_on "Create Films asiatiques actualite mini"

    assert_text "Films asiatiques actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques actualite mini" do
    visit _films_asiatiques_actualite_mini_url(@_films_asiatiques_actualite_mini)
    click_on "Edit this films asiatiques actualite mini", match: :first

    fill_in "Name", with: @_films_asiatiques_actualite_mini.name
    click_on "Update Films asiatiques actualite mini"

    assert_text "Films asiatiques actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques actualite mini" do
    visit _films_asiatiques_actualite_mini_url(@_films_asiatiques_actualite_mini)
    click_on "Destroy this films asiatiques actualite mini", match: :first

    assert_text "Films asiatiques actualite mini was successfully destroyed"
  end
end
