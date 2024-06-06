require "application_system_test_case"

class FilmsAsiatiquesEnSallesDramasTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_drama = _films_asiatiques_en_salles_dramas(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_dramas_url
    assert_selector "h1", text: "Films asiatiques en salles dramas"
  end

  test "should create films asiatiques en salles drama" do
    visit _films_asiatiques_en_salles_dramas_url
    click_on "New films asiatiques en salles drama"

    fill_in "Name", with: @_films_asiatiques_en_salles_drama.name
    click_on "Create Films asiatiques en salles drama"

    assert_text "Films asiatiques en salles drama was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles drama" do
    visit _films_asiatiques_en_salles_drama_url(@_films_asiatiques_en_salles_drama)
    click_on "Edit this films asiatiques en salles drama", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_drama.name
    click_on "Update Films asiatiques en salles drama"

    assert_text "Films asiatiques en salles drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles drama" do
    visit _films_asiatiques_en_salles_drama_url(@_films_asiatiques_en_salles_drama)
    click_on "Destroy this films asiatiques en salles drama", match: :first

    assert_text "Films asiatiques en salles drama was successfully destroyed"
  end
end
