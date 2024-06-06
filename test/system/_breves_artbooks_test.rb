require "application_system_test_case"

class BrevesArtbooksTest < ApplicationSystemTestCase
  setup do
    @_breves_artbook = _breves_artbooks(:one)
  end

  test "visiting the index" do
    visit _breves_artbooks_url
    assert_selector "h1", text: "Breves artbooks"
  end

  test "should create breves artbook" do
    visit _breves_artbooks_url
    click_on "New breves artbook"

    fill_in "Name", with: @_breves_artbook.name
    click_on "Create Breves artbook"

    assert_text "Breves artbook was successfully created"
    click_on "Back"
  end

  test "should update Breves artbook" do
    visit _breves_artbook_url(@_breves_artbook)
    click_on "Edit this breves artbook", match: :first

    fill_in "Name", with: @_breves_artbook.name
    click_on "Update Breves artbook"

    assert_text "Breves artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves artbook" do
    visit _breves_artbook_url(@_breves_artbook)
    click_on "Destroy this breves artbook", match: :first

    assert_text "Breves artbook was successfully destroyed"
  end
end
