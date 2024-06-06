require "application_system_test_case"

class PhotobooksPhotobooksTest < ApplicationSystemTestCase
  setup do
    @_photobooks_photobook = _photobooks_photobooks(:one)
  end

  test "visiting the index" do
    visit _photobooks_photobooks_url
    assert_selector "h1", text: "Photobooks photobooks"
  end

  test "should create photobooks photobook" do
    visit _photobooks_photobooks_url
    click_on "New photobooks photobook"

    fill_in "Name", with: @_photobooks_photobook.name
    click_on "Create Photobooks photobook"

    assert_text "Photobooks photobook was successfully created"
    click_on "Back"
  end

  test "should update Photobooks photobook" do
    visit _photobooks_photobook_url(@_photobooks_photobook)
    click_on "Edit this photobooks photobook", match: :first

    fill_in "Name", with: @_photobooks_photobook.name
    click_on "Update Photobooks photobook"

    assert_text "Photobooks photobook was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks photobook" do
    visit _photobooks_photobook_url(@_photobooks_photobook)
    click_on "Destroy this photobooks photobook", match: :first

    assert_text "Photobooks photobook was successfully destroyed"
  end
end
