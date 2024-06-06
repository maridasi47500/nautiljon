require "application_system_test_case"

class DramasDoujinsTest < ApplicationSystemTestCase
  setup do
    @_dramas_doujin = _dramas_doujins(:one)
  end

  test "visiting the index" do
    visit _dramas_doujins_url
    assert_selector "h1", text: "Dramas doujins"
  end

  test "should create dramas doujin" do
    visit _dramas_doujins_url
    click_on "New dramas doujin"

    fill_in "Name", with: @_dramas_doujin.name
    click_on "Create Dramas doujin"

    assert_text "Dramas doujin was successfully created"
    click_on "Back"
  end

  test "should update Dramas doujin" do
    visit _dramas_doujin_url(@_dramas_doujin)
    click_on "Edit this dramas doujin", match: :first

    fill_in "Name", with: @_dramas_doujin.name
    click_on "Update Dramas doujin"

    assert_text "Dramas doujin was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas doujin" do
    visit _dramas_doujin_url(@_dramas_doujin)
    click_on "Destroy this dramas doujin", match: :first

    assert_text "Dramas doujin was successfully destroyed"
  end
end
