require "application_system_test_case"

class DoujinshisGroupesTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_groupe = _doujinshis_groupes(:one)
  end

  test "visiting the index" do
    visit _doujinshis_groupes_url
    assert_selector "h1", text: "Doujinshis groupes"
  end

  test "should create doujinshis groupe" do
    visit _doujinshis_groupes_url
    click_on "New doujinshis groupe"

    fill_in "Name", with: @_doujinshis_groupe.name
    click_on "Create Doujinshis groupe"

    assert_text "Doujinshis groupe was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis groupe" do
    visit _doujinshis_groupe_url(@_doujinshis_groupe)
    click_on "Edit this doujinshis groupe", match: :first

    fill_in "Name", with: @_doujinshis_groupe.name
    click_on "Update Doujinshis groupe"

    assert_text "Doujinshis groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis groupe" do
    visit _doujinshis_groupe_url(@_doujinshis_groupe)
    click_on "Destroy this doujinshis groupe", match: :first

    assert_text "Doujinshis groupe was successfully destroyed"
  end
end
