require "application_system_test_case"

class FilmsAsiatiquesAmsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_am = _films_asiatiques_ams(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_ams_url
    assert_selector "h1", text: "Films asiatiques ams"
  end

  test "should create films asiatiques am" do
    visit _films_asiatiques_ams_url
    click_on "New films asiatiques am"

    fill_in "Name", with: @_films_asiatiques_am.name
    click_on "Create Films asiatiques am"

    assert_text "Films asiatiques am was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques am" do
    visit _films_asiatiques_am_url(@_films_asiatiques_am)
    click_on "Edit this films asiatiques am", match: :first

    fill_in "Name", with: @_films_asiatiques_am.name
    click_on "Update Films asiatiques am"

    assert_text "Films asiatiques am was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques am" do
    visit _films_asiatiques_am_url(@_films_asiatiques_am)
    click_on "Destroy this films asiatiques am", match: :first

    assert_text "Films asiatiques am was successfully destroyed"
  end
end
