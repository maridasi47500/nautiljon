require "application_system_test_case"

class FilmsAsiatiquesDramasTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_drama = _films_asiatiques_dramas(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_dramas_url
    assert_selector "h1", text: "Films asiatiques dramas"
  end

  test "should create films asiatiques drama" do
    visit _films_asiatiques_dramas_url
    click_on "New films asiatiques drama"

    fill_in "Name", with: @_films_asiatiques_drama.name
    click_on "Create Films asiatiques drama"

    assert_text "Films asiatiques drama was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques drama" do
    visit _films_asiatiques_drama_url(@_films_asiatiques_drama)
    click_on "Edit this films asiatiques drama", match: :first

    fill_in "Name", with: @_films_asiatiques_drama.name
    click_on "Update Films asiatiques drama"

    assert_text "Films asiatiques drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques drama" do
    visit _films_asiatiques_drama_url(@_films_asiatiques_drama)
    click_on "Destroy this films asiatiques drama", match: :first

    assert_text "Films asiatiques drama was successfully destroyed"
  end
end
