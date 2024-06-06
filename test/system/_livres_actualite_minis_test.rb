require "application_system_test_case"

class LivresActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_livres_actualite_mini = _livres_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _livres_actualite_minis_url
    assert_selector "h1", text: "Livres actualite minis"
  end

  test "should create livres actualite mini" do
    visit _livres_actualite_minis_url
    click_on "New livres actualite mini"

    fill_in "Name", with: @_livres_actualite_mini.name
    click_on "Create Livres actualite mini"

    assert_text "Livres actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Livres actualite mini" do
    visit _livres_actualite_mini_url(@_livres_actualite_mini)
    click_on "Edit this livres actualite mini", match: :first

    fill_in "Name", with: @_livres_actualite_mini.name
    click_on "Update Livres actualite mini"

    assert_text "Livres actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres actualite mini" do
    visit _livres_actualite_mini_url(@_livres_actualite_mini)
    click_on "Destroy this livres actualite mini", match: :first

    assert_text "Livres actualite mini was successfully destroyed"
  end
end
