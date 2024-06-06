require "application_system_test_case"

class RecettesDifficultesTest < ApplicationSystemTestCase
  setup do
    @_recettes_difficulte = _recettes_difficultes(:one)
  end

  test "visiting the index" do
    visit _recettes_difficultes_url
    assert_selector "h1", text: "Recettes difficultes"
  end

  test "should create recettes difficulte" do
    visit _recettes_difficultes_url
    click_on "New recettes difficulte"

    fill_in "Name", with: @_recettes_difficulte.name
    click_on "Create Recettes difficulte"

    assert_text "Recettes difficulte was successfully created"
    click_on "Back"
  end

  test "should update Recettes difficulte" do
    visit _recettes_difficulte_url(@_recettes_difficulte)
    click_on "Edit this recettes difficulte", match: :first

    fill_in "Name", with: @_recettes_difficulte.name
    click_on "Update Recettes difficulte"

    assert_text "Recettes difficulte was successfully updated"
    click_on "Back"
  end

  test "should destroy Recettes difficulte" do
    visit _recettes_difficulte_url(@_recettes_difficulte)
    click_on "Destroy this recettes difficulte", match: :first

    assert_text "Recettes difficulte was successfully destroyed"
  end
end
