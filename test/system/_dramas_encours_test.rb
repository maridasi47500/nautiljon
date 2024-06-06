require "application_system_test_case"

class DramasEncoursTest < ApplicationSystemTestCase
  setup do
    @_dramas_encour = _dramas_encours(:one)
  end

  test "visiting the index" do
    visit _dramas_encours_url
    assert_selector "h1", text: "Dramas encours"
  end

  test "should create dramas encour" do
    visit _dramas_encours_url
    click_on "New dramas encour"

    fill_in "Name", with: @_dramas_encour.name
    click_on "Create Dramas encour"

    assert_text "Dramas encour was successfully created"
    click_on "Back"
  end

  test "should update Dramas encour" do
    visit _dramas_encour_url(@_dramas_encour)
    click_on "Edit this dramas encour", match: :first

    fill_in "Name", with: @_dramas_encour.name
    click_on "Update Dramas encour"

    assert_text "Dramas encour was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas encour" do
    visit _dramas_encour_url(@_dramas_encour)
    click_on "Destroy this dramas encour", match: :first

    assert_text "Dramas encour was successfully destroyed"
  end
end
