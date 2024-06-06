require "application_system_test_case"

class FilmsAsiatiquesDramaPlusTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_drama_plu = _films_asiatiques_drama_plus(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_drama_plus_url
    assert_selector "h1", text: "Films asiatiques drama plus"
  end

  test "should create films asiatiques drama plu" do
    visit _films_asiatiques_drama_plus_url
    click_on "New films asiatiques drama plu"

    fill_in "Name", with: @_films_asiatiques_drama_plu.name
    click_on "Create Films asiatiques drama plu"

    assert_text "Films asiatiques drama plu was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques drama plu" do
    visit _films_asiatiques_drama_plu_url(@_films_asiatiques_drama_plu)
    click_on "Edit this films asiatiques drama plu", match: :first

    fill_in "Name", with: @_films_asiatiques_drama_plu.name
    click_on "Update Films asiatiques drama plu"

    assert_text "Films asiatiques drama plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques drama plu" do
    visit _films_asiatiques_drama_plu_url(@_films_asiatiques_drama_plu)
    click_on "Destroy this films asiatiques drama plu", match: :first

    assert_text "Films asiatiques drama plu was successfully destroyed"
  end
end
