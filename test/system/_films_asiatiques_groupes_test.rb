require "application_system_test_case"

class FilmsAsiatiquesGroupesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_groupe = _films_asiatiques_groupes(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_groupes_url
    assert_selector "h1", text: "Films asiatiques groupes"
  end

  test "should create films asiatiques groupe" do
    visit _films_asiatiques_groupes_url
    click_on "New films asiatiques groupe"

    fill_in "Name", with: @_films_asiatiques_groupe.name
    click_on "Create Films asiatiques groupe"

    assert_text "Films asiatiques groupe was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques groupe" do
    visit _films_asiatiques_groupe_url(@_films_asiatiques_groupe)
    click_on "Edit this films asiatiques groupe", match: :first

    fill_in "Name", with: @_films_asiatiques_groupe.name
    click_on "Update Films asiatiques groupe"

    assert_text "Films asiatiques groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques groupe" do
    visit _films_asiatiques_groupe_url(@_films_asiatiques_groupe)
    click_on "Destroy this films asiatiques groupe", match: :first

    assert_text "Films asiatiques groupe was successfully destroyed"
  end
end
