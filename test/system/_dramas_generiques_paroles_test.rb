require "application_system_test_case"

class DramasGeneriquesParolesTest < ApplicationSystemTestCase
  setup do
    @_dramas_generiques_parole = _dramas_generiques_paroles(:one)
  end

  test "visiting the index" do
    visit _dramas_generiques_paroles_url
    assert_selector "h1", text: "Dramas generiques paroles"
  end

  test "should create dramas generiques parole" do
    visit _dramas_generiques_paroles_url
    click_on "New dramas generiques parole"

    fill_in "Name", with: @_dramas_generiques_parole.name
    click_on "Create Dramas generiques parole"

    assert_text "Dramas generiques parole was successfully created"
    click_on "Back"
  end

  test "should update Dramas generiques parole" do
    visit _dramas_generiques_parole_url(@_dramas_generiques_parole)
    click_on "Edit this dramas generiques parole", match: :first

    fill_in "Name", with: @_dramas_generiques_parole.name
    click_on "Update Dramas generiques parole"

    assert_text "Dramas generiques parole was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas generiques parole" do
    visit _dramas_generiques_parole_url(@_dramas_generiques_parole)
    click_on "Destroy this dramas generiques parole", match: :first

    assert_text "Dramas generiques parole was successfully destroyed"
  end
end
