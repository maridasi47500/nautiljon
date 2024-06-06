require "application_system_test_case"

class BrevesPhotobooksTest < ApplicationSystemTestCase
  setup do
    @_breves_photobook = _breves_photobooks(:one)
  end

  test "visiting the index" do
    visit _breves_photobooks_url
    assert_selector "h1", text: "Breves photobooks"
  end

  test "should create breves photobook" do
    visit _breves_photobooks_url
    click_on "New breves photobook"

    fill_in "Name", with: @_breves_photobook.name
    click_on "Create Breves photobook"

    assert_text "Breves photobook was successfully created"
    click_on "Back"
  end

  test "should update Breves photobook" do
    visit _breves_photobook_url(@_breves_photobook)
    click_on "Edit this breves photobook", match: :first

    fill_in "Name", with: @_breves_photobook.name
    click_on "Update Breves photobook"

    assert_text "Breves photobook was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves photobook" do
    visit _breves_photobook_url(@_breves_photobook)
    click_on "Destroy this breves photobook", match: :first

    assert_text "Breves photobook was successfully destroyed"
  end
end
