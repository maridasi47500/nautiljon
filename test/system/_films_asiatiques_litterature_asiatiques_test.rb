require "application_system_test_case"

class FilmsAsiatiquesLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_litterature_asiatique = _films_asiatiques_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_litterature_asiatiques_url
    assert_selector "h1", text: "Films asiatiques litterature asiatiques"
  end

  test "should create films asiatiques litterature asiatique" do
    visit _films_asiatiques_litterature_asiatiques_url
    click_on "New films asiatiques litterature asiatique"

    fill_in "Name", with: @_films_asiatiques_litterature_asiatique.name
    click_on "Create Films asiatiques litterature asiatique"

    assert_text "Films asiatiques litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques litterature asiatique" do
    visit _films_asiatiques_litterature_asiatique_url(@_films_asiatiques_litterature_asiatique)
    click_on "Edit this films asiatiques litterature asiatique", match: :first

    fill_in "Name", with: @_films_asiatiques_litterature_asiatique.name
    click_on "Update Films asiatiques litterature asiatique"

    assert_text "Films asiatiques litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques litterature asiatique" do
    visit _films_asiatiques_litterature_asiatique_url(@_films_asiatiques_litterature_asiatique)
    click_on "Destroy this films asiatiques litterature asiatique", match: :first

    assert_text "Films asiatiques litterature asiatique was successfully destroyed"
  end
end
