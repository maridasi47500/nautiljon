require "application_system_test_case"

class BrevesActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_breves_actualite_mini = _breves_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _breves_actualite_minis_url
    assert_selector "h1", text: "Breves actualite minis"
  end

  test "should create breves actualite mini" do
    visit _breves_actualite_minis_url
    click_on "New breves actualite mini"

    fill_in "Name", with: @_breves_actualite_mini.name
    click_on "Create Breves actualite mini"

    assert_text "Breves actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Breves actualite mini" do
    visit _breves_actualite_mini_url(@_breves_actualite_mini)
    click_on "Edit this breves actualite mini", match: :first

    fill_in "Name", with: @_breves_actualite_mini.name
    click_on "Update Breves actualite mini"

    assert_text "Breves actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves actualite mini" do
    visit _breves_actualite_mini_url(@_breves_actualite_mini)
    click_on "Destroy this breves actualite mini", match: :first

    assert_text "Breves actualite mini was successfully destroyed"
  end
end
