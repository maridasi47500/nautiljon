require "application_system_test_case"

class GoodiesPhotobooksTest < ApplicationSystemTestCase
  setup do
    @_goodies_photobook = _goodies_photobooks(:one)
  end

  test "visiting the index" do
    visit _goodies_photobooks_url
    assert_selector "h1", text: "Goodies photobooks"
  end

  test "should create goodies photobook" do
    visit _goodies_photobooks_url
    click_on "New goodies photobook"

    fill_in "Name", with: @_goodies_photobook.name
    click_on "Create Goodies photobook"

    assert_text "Goodies photobook was successfully created"
    click_on "Back"
  end

  test "should update Goodies photobook" do
    visit _goodies_photobook_url(@_goodies_photobook)
    click_on "Edit this goodies photobook", match: :first

    fill_in "Name", with: @_goodies_photobook.name
    click_on "Update Goodies photobook"

    assert_text "Goodies photobook was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies photobook" do
    visit _goodies_photobook_url(@_goodies_photobook)
    click_on "Destroy this goodies photobook", match: :first

    assert_text "Goodies photobook was successfully destroyed"
  end
end
