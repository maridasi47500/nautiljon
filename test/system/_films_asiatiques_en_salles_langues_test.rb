require "application_system_test_case"

class FilmsAsiatiquesEnSallesLanguesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_en_salles_langue = _films_asiatiques_en_salles_langues(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_en_salles_langues_url
    assert_selector "h1", text: "Films asiatiques en salles langues"
  end

  test "should create films asiatiques en salles langue" do
    visit _films_asiatiques_en_salles_langues_url
    click_on "New films asiatiques en salles langue"

    fill_in "Name", with: @_films_asiatiques_en_salles_langue.name
    click_on "Create Films asiatiques en salles langue"

    assert_text "Films asiatiques en salles langue was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques en salles langue" do
    visit _films_asiatiques_en_salles_langue_url(@_films_asiatiques_en_salles_langue)
    click_on "Edit this films asiatiques en salles langue", match: :first

    fill_in "Name", with: @_films_asiatiques_en_salles_langue.name
    click_on "Update Films asiatiques en salles langue"

    assert_text "Films asiatiques en salles langue was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques en salles langue" do
    visit _films_asiatiques_en_salles_langue_url(@_films_asiatiques_en_salles_langue)
    click_on "Destroy this films asiatiques en salles langue", match: :first

    assert_text "Films asiatiques en salles langue was successfully destroyed"
  end
end
