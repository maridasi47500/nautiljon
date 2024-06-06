require "application_system_test_case"

class DramasGroupesTest < ApplicationSystemTestCase
  setup do
    @_dramas_groupe = _dramas_groupes(:one)
  end

  test "visiting the index" do
    visit _dramas_groupes_url
    assert_selector "h1", text: "Dramas groupes"
  end

  test "should create dramas groupe" do
    visit _dramas_groupes_url
    click_on "New dramas groupe"

    fill_in "Name", with: @_dramas_groupe.name
    click_on "Create Dramas groupe"

    assert_text "Dramas groupe was successfully created"
    click_on "Back"
  end

  test "should update Dramas groupe" do
    visit _dramas_groupe_url(@_dramas_groupe)
    click_on "Edit this dramas groupe", match: :first

    fill_in "Name", with: @_dramas_groupe.name
    click_on "Update Dramas groupe"

    assert_text "Dramas groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas groupe" do
    visit _dramas_groupe_url(@_dramas_groupe)
    click_on "Destroy this dramas groupe", match: :first

    assert_text "Dramas groupe was successfully destroyed"
  end
end
