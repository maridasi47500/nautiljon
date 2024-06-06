require "application_system_test_case"

class DramasActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_dramas_actualite_mini = _dramas_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _dramas_actualite_minis_url
    assert_selector "h1", text: "Dramas actualite minis"
  end

  test "should create dramas actualite mini" do
    visit _dramas_actualite_minis_url
    click_on "New dramas actualite mini"

    fill_in "Name", with: @_dramas_actualite_mini.name
    click_on "Create Dramas actualite mini"

    assert_text "Dramas actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Dramas actualite mini" do
    visit _dramas_actualite_mini_url(@_dramas_actualite_mini)
    click_on "Edit this dramas actualite mini", match: :first

    fill_in "Name", with: @_dramas_actualite_mini.name
    click_on "Update Dramas actualite mini"

    assert_text "Dramas actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas actualite mini" do
    visit _dramas_actualite_mini_url(@_dramas_actualite_mini)
    click_on "Destroy this dramas actualite mini", match: :first

    assert_text "Dramas actualite mini was successfully destroyed"
  end
end
