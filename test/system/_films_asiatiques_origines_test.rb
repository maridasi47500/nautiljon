require "application_system_test_case"

class FilmsAsiatiquesOriginesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_origine = _films_asiatiques_origines(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_origines_url
    assert_selector "h1", text: "Films asiatiques origines"
  end

  test "should create films asiatiques origine" do
    visit _films_asiatiques_origines_url
    click_on "New films asiatiques origine"

    fill_in "Name", with: @_films_asiatiques_origine.name
    click_on "Create Films asiatiques origine"

    assert_text "Films asiatiques origine was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques origine" do
    visit _films_asiatiques_origine_url(@_films_asiatiques_origine)
    click_on "Edit this films asiatiques origine", match: :first

    fill_in "Name", with: @_films_asiatiques_origine.name
    click_on "Update Films asiatiques origine"

    assert_text "Films asiatiques origine was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques origine" do
    visit _films_asiatiques_origine_url(@_films_asiatiques_origine)
    click_on "Destroy this films asiatiques origine", match: :first

    assert_text "Films asiatiques origine was successfully destroyed"
  end
end
