require "application_system_test_case"

class LivresActualitesTest < ApplicationSystemTestCase
  setup do
    @_livres_actualite = _livres_actualites(:one)
  end

  test "visiting the index" do
    visit _livres_actualites_url
    assert_selector "h1", text: "Livres actualites"
  end

  test "should create livres actualite" do
    visit _livres_actualites_url
    click_on "New livres actualite"

    fill_in "Name", with: @_livres_actualite.name
    click_on "Create Livres actualite"

    assert_text "Livres actualite was successfully created"
    click_on "Back"
  end

  test "should update Livres actualite" do
    visit _livres_actualite_url(@_livres_actualite)
    click_on "Edit this livres actualite", match: :first

    fill_in "Name", with: @_livres_actualite.name
    click_on "Update Livres actualite"

    assert_text "Livres actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres actualite" do
    visit _livres_actualite_url(@_livres_actualite)
    click_on "Destroy this livres actualite", match: :first

    assert_text "Livres actualite was successfully destroyed"
  end
end
