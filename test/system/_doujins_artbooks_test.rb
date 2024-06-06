require "application_system_test_case"

class DoujinsArtbooksTest < ApplicationSystemTestCase
  setup do
    @_doujins_artbook = _doujins_artbooks(:one)
  end

  test "visiting the index" do
    visit _doujins_artbooks_url
    assert_selector "h1", text: "Doujins artbooks"
  end

  test "should create doujins artbook" do
    visit _doujins_artbooks_url
    click_on "New doujins artbook"

    fill_in "Name", with: @_doujins_artbook.name
    click_on "Create Doujins artbook"

    assert_text "Doujins artbook was successfully created"
    click_on "Back"
  end

  test "should update Doujins artbook" do
    visit _doujins_artbook_url(@_doujins_artbook)
    click_on "Edit this doujins artbook", match: :first

    fill_in "Name", with: @_doujins_artbook.name
    click_on "Update Doujins artbook"

    assert_text "Doujins artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins artbook" do
    visit _doujins_artbook_url(@_doujins_artbook)
    click_on "Destroy this doujins artbook", match: :first

    assert_text "Doujins artbook was successfully destroyed"
  end
end
