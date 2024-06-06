require "application_system_test_case"

class FilmsAsiatiquesAmPlusTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_am_plu = _films_asiatiques_am_plus(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_am_plus_url
    assert_selector "h1", text: "Films asiatiques am plus"
  end

  test "should create films asiatiques am plu" do
    visit _films_asiatiques_am_plus_url
    click_on "New films asiatiques am plu"

    fill_in "Name", with: @_films_asiatiques_am_plu.name
    click_on "Create Films asiatiques am plu"

    assert_text "Films asiatiques am plu was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques am plu" do
    visit _films_asiatiques_am_plu_url(@_films_asiatiques_am_plu)
    click_on "Edit this films asiatiques am plu", match: :first

    fill_in "Name", with: @_films_asiatiques_am_plu.name
    click_on "Update Films asiatiques am plu"

    assert_text "Films asiatiques am plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques am plu" do
    visit _films_asiatiques_am_plu_url(@_films_asiatiques_am_plu)
    click_on "Destroy this films asiatiques am plu", match: :first

    assert_text "Films asiatiques am plu was successfully destroyed"
  end
end
