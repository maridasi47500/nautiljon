require "application_system_test_case"

class FilmsAsiatiquesConcoursTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_concour = _films_asiatiques_concours(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_concours_url
    assert_selector "h1", text: "Films asiatiques concours"
  end

  test "should create films asiatiques concour" do
    visit _films_asiatiques_concours_url
    click_on "New films asiatiques concour"

    fill_in "Name", with: @_films_asiatiques_concour.name
    click_on "Create Films asiatiques concour"

    assert_text "Films asiatiques concour was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques concour" do
    visit _films_asiatiques_concour_url(@_films_asiatiques_concour)
    click_on "Edit this films asiatiques concour", match: :first

    fill_in "Name", with: @_films_asiatiques_concour.name
    click_on "Update Films asiatiques concour"

    assert_text "Films asiatiques concour was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques concour" do
    visit _films_asiatiques_concour_url(@_films_asiatiques_concour)
    click_on "Destroy this films asiatiques concour", match: :first

    assert_text "Films asiatiques concour was successfully destroyed"
  end
end
