require "application_system_test_case"

class LivresTypeSecondairesTest < ApplicationSystemTestCase
  setup do
    @_livres_type_secondaire = _livres_type_secondaires(:one)
  end

  test "visiting the index" do
    visit _livres_type_secondaires_url
    assert_selector "h1", text: "Livres type secondaires"
  end

  test "should create livres type secondaire" do
    visit _livres_type_secondaires_url
    click_on "New livres type secondaire"

    fill_in "Name", with: @_livres_type_secondaire.name
    click_on "Create Livres type secondaire"

    assert_text "Livres type secondaire was successfully created"
    click_on "Back"
  end

  test "should update Livres type secondaire" do
    visit _livres_type_secondaire_url(@_livres_type_secondaire)
    click_on "Edit this livres type secondaire", match: :first

    fill_in "Name", with: @_livres_type_secondaire.name
    click_on "Update Livres type secondaire"

    assert_text "Livres type secondaire was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres type secondaire" do
    visit _livres_type_secondaire_url(@_livres_type_secondaire)
    click_on "Destroy this livres type secondaire", match: :first

    assert_text "Livres type secondaire was successfully destroyed"
  end
end
