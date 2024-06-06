require "application_system_test_case"

class GoodiesArtbooksTest < ApplicationSystemTestCase
  setup do
    @_goodies_artbook = _goodies_artbooks(:one)
  end

  test "visiting the index" do
    visit _goodies_artbooks_url
    assert_selector "h1", text: "Goodies artbooks"
  end

  test "should create goodies artbook" do
    visit _goodies_artbooks_url
    click_on "New goodies artbook"

    fill_in "Name", with: @_goodies_artbook.name
    click_on "Create Goodies artbook"

    assert_text "Goodies artbook was successfully created"
    click_on "Back"
  end

  test "should update Goodies artbook" do
    visit _goodies_artbook_url(@_goodies_artbook)
    click_on "Edit this goodies artbook", match: :first

    fill_in "Name", with: @_goodies_artbook.name
    click_on "Update Goodies artbook"

    assert_text "Goodies artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies artbook" do
    visit _goodies_artbook_url(@_goodies_artbook)
    click_on "Destroy this goodies artbook", match: :first

    assert_text "Goodies artbook was successfully destroyed"
  end
end
