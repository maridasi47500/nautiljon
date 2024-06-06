require "application_system_test_case"

class DoujinsGroupesTest < ApplicationSystemTestCase
  setup do
    @_doujins_groupe = _doujins_groupes(:one)
  end

  test "visiting the index" do
    visit _doujins_groupes_url
    assert_selector "h1", text: "Doujins groupes"
  end

  test "should create doujins groupe" do
    visit _doujins_groupes_url
    click_on "New doujins groupe"

    fill_in "Name", with: @_doujins_groupe.name
    click_on "Create Doujins groupe"

    assert_text "Doujins groupe was successfully created"
    click_on "Back"
  end

  test "should update Doujins groupe" do
    visit _doujins_groupe_url(@_doujins_groupe)
    click_on "Edit this doujins groupe", match: :first

    fill_in "Name", with: @_doujins_groupe.name
    click_on "Update Doujins groupe"

    assert_text "Doujins groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins groupe" do
    visit _doujins_groupe_url(@_doujins_groupe)
    click_on "Destroy this doujins groupe", match: :first

    assert_text "Doujins groupe was successfully destroyed"
  end
end
