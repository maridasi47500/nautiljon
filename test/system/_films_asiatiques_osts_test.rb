require "application_system_test_case"

class FilmsAsiatiquesOstsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_ost = _films_asiatiques_osts(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_osts_url
    assert_selector "h1", text: "Films asiatiques osts"
  end

  test "should create films asiatiques ost" do
    visit _films_asiatiques_osts_url
    click_on "New films asiatiques ost"

    fill_in "Name", with: @_films_asiatiques_ost.name
    click_on "Create Films asiatiques ost"

    assert_text "Films asiatiques ost was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques ost" do
    visit _films_asiatiques_ost_url(@_films_asiatiques_ost)
    click_on "Edit this films asiatiques ost", match: :first

    fill_in "Name", with: @_films_asiatiques_ost.name
    click_on "Update Films asiatiques ost"

    assert_text "Films asiatiques ost was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques ost" do
    visit _films_asiatiques_ost_url(@_films_asiatiques_ost)
    click_on "Destroy this films asiatiques ost", match: :first

    assert_text "Films asiatiques ost was successfully destroyed"
  end
end
