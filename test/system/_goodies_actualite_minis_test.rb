require "application_system_test_case"

class GoodiesActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_goodies_actualite_mini = _goodies_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _goodies_actualite_minis_url
    assert_selector "h1", text: "Goodies actualite minis"
  end

  test "should create goodies actualite mini" do
    visit _goodies_actualite_minis_url
    click_on "New goodies actualite mini"

    fill_in "Name", with: @_goodies_actualite_mini.name
    click_on "Create Goodies actualite mini"

    assert_text "Goodies actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Goodies actualite mini" do
    visit _goodies_actualite_mini_url(@_goodies_actualite_mini)
    click_on "Edit this goodies actualite mini", match: :first

    fill_in "Name", with: @_goodies_actualite_mini.name
    click_on "Update Goodies actualite mini"

    assert_text "Goodies actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies actualite mini" do
    visit _goodies_actualite_mini_url(@_goodies_actualite_mini)
    click_on "Destroy this goodies actualite mini", match: :first

    assert_text "Goodies actualite mini was successfully destroyed"
  end
end
