require "application_system_test_case"

class FilmsAsiatiquesEmissionTvsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_emission_tv = _films_asiatiques_emission_tvs(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_emission_tvs_url
    assert_selector "h1", text: "Films asiatiques emission tvs"
  end

  test "should create films asiatiques emission tv" do
    visit _films_asiatiques_emission_tvs_url
    click_on "New films asiatiques emission tv"

    fill_in "Name", with: @_films_asiatiques_emission_tv.name
    click_on "Create Films asiatiques emission tv"

    assert_text "Films asiatiques emission tv was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques emission tv" do
    visit _films_asiatiques_emission_tv_url(@_films_asiatiques_emission_tv)
    click_on "Edit this films asiatiques emission tv", match: :first

    fill_in "Name", with: @_films_asiatiques_emission_tv.name
    click_on "Update Films asiatiques emission tv"

    assert_text "Films asiatiques emission tv was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques emission tv" do
    visit _films_asiatiques_emission_tv_url(@_films_asiatiques_emission_tv)
    click_on "Destroy this films asiatiques emission tv", match: :first

    assert_text "Films asiatiques emission tv was successfully destroyed"
  end
end
