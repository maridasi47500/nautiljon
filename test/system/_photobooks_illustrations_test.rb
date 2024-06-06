require "application_system_test_case"

class PhotobooksIllustrationsTest < ApplicationSystemTestCase
  setup do
    @_photobooks_illustration = _photobooks_illustrations(:one)
  end

  test "visiting the index" do
    visit _photobooks_illustrations_url
    assert_selector "h1", text: "Photobooks illustrations"
  end

  test "should create photobooks illustration" do
    visit _photobooks_illustrations_url
    click_on "New photobooks illustration"

    fill_in "Name", with: @_photobooks_illustration.name
    click_on "Create Photobooks illustration"

    assert_text "Photobooks illustration was successfully created"
    click_on "Back"
  end

  test "should update Photobooks illustration" do
    visit _photobooks_illustration_url(@_photobooks_illustration)
    click_on "Edit this photobooks illustration", match: :first

    fill_in "Name", with: @_photobooks_illustration.name
    click_on "Update Photobooks illustration"

    assert_text "Photobooks illustration was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks illustration" do
    visit _photobooks_illustration_url(@_photobooks_illustration)
    click_on "Destroy this photobooks illustration", match: :first

    assert_text "Photobooks illustration was successfully destroyed"
  end
end
