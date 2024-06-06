require "application_system_test_case"

class DoujinshisArtbooksTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_artbook = _doujinshis_artbooks(:one)
  end

  test "visiting the index" do
    visit _doujinshis_artbooks_url
    assert_selector "h1", text: "Doujinshis artbooks"
  end

  test "should create doujinshis artbook" do
    visit _doujinshis_artbooks_url
    click_on "New doujinshis artbook"

    fill_in "Name", with: @_doujinshis_artbook.name
    click_on "Create Doujinshis artbook"

    assert_text "Doujinshis artbook was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis artbook" do
    visit _doujinshis_artbook_url(@_doujinshis_artbook)
    click_on "Edit this doujinshis artbook", match: :first

    fill_in "Name", with: @_doujinshis_artbook.name
    click_on "Update Doujinshis artbook"

    assert_text "Doujinshis artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis artbook" do
    visit _doujinshis_artbook_url(@_doujinshis_artbook)
    click_on "Destroy this doujinshis artbook", match: :first

    assert_text "Doujinshis artbook was successfully destroyed"
  end
end
