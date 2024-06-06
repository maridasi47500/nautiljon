require "application_system_test_case"

class FilmsAsiatiquesLitteratureAsiatiquePlusTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_litterature_asiatique_plu = _films_asiatiques_litterature_asiatique_plus(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_litterature_asiatique_plus_url
    assert_selector "h1", text: "Films asiatiques litterature asiatique plus"
  end

  test "should create films asiatiques litterature asiatique plu" do
    visit _films_asiatiques_litterature_asiatique_plus_url
    click_on "New films asiatiques litterature asiatique plu"

    fill_in "Name", with: @_films_asiatiques_litterature_asiatique_plu.name
    click_on "Create Films asiatiques litterature asiatique plu"

    assert_text "Films asiatiques litterature asiatique plu was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques litterature asiatique plu" do
    visit _films_asiatiques_litterature_asiatique_plu_url(@_films_asiatiques_litterature_asiatique_plu)
    click_on "Edit this films asiatiques litterature asiatique plu", match: :first

    fill_in "Name", with: @_films_asiatiques_litterature_asiatique_plu.name
    click_on "Update Films asiatiques litterature asiatique plu"

    assert_text "Films asiatiques litterature asiatique plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques litterature asiatique plu" do
    visit _films_asiatiques_litterature_asiatique_plu_url(@_films_asiatiques_litterature_asiatique_plu)
    click_on "Destroy this films asiatiques litterature asiatique plu", match: :first

    assert_text "Films asiatiques litterature asiatique plu was successfully destroyed"
  end
end
