require "application_system_test_case"

class FilmsAsiatiquesCulturesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_culture = _films_asiatiques_cultures(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_cultures_url
    assert_selector "h1", text: "Films asiatiques cultures"
  end

  test "should create films asiatiques culture" do
    visit _films_asiatiques_cultures_url
    click_on "New films asiatiques culture"

    fill_in "Name", with: @_films_asiatiques_culture.name
    click_on "Create Films asiatiques culture"

    assert_text "Films asiatiques culture was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques culture" do
    visit _films_asiatiques_culture_url(@_films_asiatiques_culture)
    click_on "Edit this films asiatiques culture", match: :first

    fill_in "Name", with: @_films_asiatiques_culture.name
    click_on "Update Films asiatiques culture"

    assert_text "Films asiatiques culture was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques culture" do
    visit _films_asiatiques_culture_url(@_films_asiatiques_culture)
    click_on "Destroy this films asiatiques culture", match: :first

    assert_text "Films asiatiques culture was successfully destroyed"
  end
end
