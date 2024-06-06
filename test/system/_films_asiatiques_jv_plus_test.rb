require "application_system_test_case"

class FilmsAsiatiquesJvPlusTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_jv_plu = _films_asiatiques_jv_plus(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_jv_plus_url
    assert_selector "h1", text: "Films asiatiques jv plus"
  end

  test "should create films asiatiques jv plu" do
    visit _films_asiatiques_jv_plus_url
    click_on "New films asiatiques jv plu"

    fill_in "Name", with: @_films_asiatiques_jv_plu.name
    click_on "Create Films asiatiques jv plu"

    assert_text "Films asiatiques jv plu was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques jv plu" do
    visit _films_asiatiques_jv_plu_url(@_films_asiatiques_jv_plu)
    click_on "Edit this films asiatiques jv plu", match: :first

    fill_in "Name", with: @_films_asiatiques_jv_plu.name
    click_on "Update Films asiatiques jv plu"

    assert_text "Films asiatiques jv plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques jv plu" do
    visit _films_asiatiques_jv_plu_url(@_films_asiatiques_jv_plu)
    click_on "Destroy this films asiatiques jv plu", match: :first

    assert_text "Films asiatiques jv plu was successfully destroyed"
  end
end
