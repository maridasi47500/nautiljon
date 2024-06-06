require "application_system_test_case"

class DoujinsDoujinsTest < ApplicationSystemTestCase
  setup do
    @_doujins_doujin = _doujins_doujins(:one)
  end

  test "visiting the index" do
    visit _doujins_doujins_url
    assert_selector "h1", text: "Doujins doujins"
  end

  test "should create doujins doujin" do
    visit _doujins_doujins_url
    click_on "New doujins doujin"

    fill_in "Name", with: @_doujins_doujin.name
    click_on "Create Doujins doujin"

    assert_text "Doujins doujin was successfully created"
    click_on "Back"
  end

  test "should update Doujins doujin" do
    visit _doujins_doujin_url(@_doujins_doujin)
    click_on "Edit this doujins doujin", match: :first

    fill_in "Name", with: @_doujins_doujin.name
    click_on "Update Doujins doujin"

    assert_text "Doujins doujin was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins doujin" do
    visit _doujins_doujin_url(@_doujins_doujin)
    click_on "Destroy this doujins doujin", match: :first

    assert_text "Doujins doujin was successfully destroyed"
  end
end
