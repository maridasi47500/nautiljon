require "application_system_test_case"

class FilmsAsiatiquesLnPlusTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_ln_plu = _films_asiatiques_ln_plus(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_ln_plus_url
    assert_selector "h1", text: "Films asiatiques ln plus"
  end

  test "should create films asiatiques ln plu" do
    visit _films_asiatiques_ln_plus_url
    click_on "New films asiatiques ln plu"

    fill_in "Name", with: @_films_asiatiques_ln_plu.name
    click_on "Create Films asiatiques ln plu"

    assert_text "Films asiatiques ln plu was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques ln plu" do
    visit _films_asiatiques_ln_plu_url(@_films_asiatiques_ln_plu)
    click_on "Edit this films asiatiques ln plu", match: :first

    fill_in "Name", with: @_films_asiatiques_ln_plu.name
    click_on "Update Films asiatiques ln plu"

    assert_text "Films asiatiques ln plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques ln plu" do
    visit _films_asiatiques_ln_plu_url(@_films_asiatiques_ln_plu)
    click_on "Destroy this films asiatiques ln plu", match: :first

    assert_text "Films asiatiques ln plu was successfully destroyed"
  end
end
