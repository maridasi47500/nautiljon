require "application_system_test_case"

class FilmsAsiatiquesEmissionTvPlusTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_emission_tv_plu = _films_asiatiques_emission_tv_plus(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_emission_tv_plus_url
    assert_selector "h1", text: "Films asiatiques emission tv plus"
  end

  test "should create films asiatiques emission tv plu" do
    visit _films_asiatiques_emission_tv_plus_url
    click_on "New films asiatiques emission tv plu"

    fill_in "Name", with: @_films_asiatiques_emission_tv_plu.name
    click_on "Create Films asiatiques emission tv plu"

    assert_text "Films asiatiques emission tv plu was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques emission tv plu" do
    visit _films_asiatiques_emission_tv_plu_url(@_films_asiatiques_emission_tv_plu)
    click_on "Edit this films asiatiques emission tv plu", match: :first

    fill_in "Name", with: @_films_asiatiques_emission_tv_plu.name
    click_on "Update Films asiatiques emission tv plu"

    assert_text "Films asiatiques emission tv plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques emission tv plu" do
    visit _films_asiatiques_emission_tv_plu_url(@_films_asiatiques_emission_tv_plu)
    click_on "Destroy this films asiatiques emission tv plu", match: :first

    assert_text "Films asiatiques emission tv plu was successfully destroyed"
  end
end
