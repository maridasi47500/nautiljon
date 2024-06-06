require "application_system_test_case"

class DramasOriginesTest < ApplicationSystemTestCase
  setup do
    @_dramas_origine = _dramas_origines(:one)
  end

  test "visiting the index" do
    visit _dramas_origines_url
    assert_selector "h1", text: "Dramas origines"
  end

  test "should create dramas origine" do
    visit _dramas_origines_url
    click_on "New dramas origine"

    fill_in "Name", with: @_dramas_origine.name
    click_on "Create Dramas origine"

    assert_text "Dramas origine was successfully created"
    click_on "Back"
  end

  test "should update Dramas origine" do
    visit _dramas_origine_url(@_dramas_origine)
    click_on "Edit this dramas origine", match: :first

    fill_in "Name", with: @_dramas_origine.name
    click_on "Update Dramas origine"

    assert_text "Dramas origine was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas origine" do
    visit _dramas_origine_url(@_dramas_origine)
    click_on "Destroy this dramas origine", match: :first

    assert_text "Dramas origine was successfully destroyed"
  end
end
