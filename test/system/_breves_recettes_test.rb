require "application_system_test_case"

class BrevesRecettesTest < ApplicationSystemTestCase
  setup do
    @_breves_recette = _breves_recettes(:one)
  end

  test "visiting the index" do
    visit _breves_recettes_url
    assert_selector "h1", text: "Breves recettes"
  end

  test "should create breves recette" do
    visit _breves_recettes_url
    click_on "New breves recette"

    fill_in "Name", with: @_breves_recette.name
    click_on "Create Breves recette"

    assert_text "Breves recette was successfully created"
    click_on "Back"
  end

  test "should update Breves recette" do
    visit _breves_recette_url(@_breves_recette)
    click_on "Edit this breves recette", match: :first

    fill_in "Name", with: @_breves_recette.name
    click_on "Update Breves recette"

    assert_text "Breves recette was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves recette" do
    visit _breves_recette_url(@_breves_recette)
    click_on "Destroy this breves recette", match: :first

    assert_text "Breves recette was successfully destroyed"
  end
end
