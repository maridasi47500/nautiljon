require "application_system_test_case"

class DoujinshisOriginesTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_origine = _doujinshis_origines(:one)
  end

  test "visiting the index" do
    visit _doujinshis_origines_url
    assert_selector "h1", text: "Doujinshis origines"
  end

  test "should create doujinshis origine" do
    visit _doujinshis_origines_url
    click_on "New doujinshis origine"

    fill_in "Name", with: @_doujinshis_origine.name
    click_on "Create Doujinshis origine"

    assert_text "Doujinshis origine was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis origine" do
    visit _doujinshis_origine_url(@_doujinshis_origine)
    click_on "Edit this doujinshis origine", match: :first

    fill_in "Name", with: @_doujinshis_origine.name
    click_on "Update Doujinshis origine"

    assert_text "Doujinshis origine was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis origine" do
    visit _doujinshis_origine_url(@_doujinshis_origine)
    click_on "Destroy this doujinshis origine", match: :first

    assert_text "Doujinshis origine was successfully destroyed"
  end
end
