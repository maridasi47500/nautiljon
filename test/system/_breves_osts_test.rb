require "application_system_test_case"

class BrevesOstsTest < ApplicationSystemTestCase
  setup do
    @_breves_ost = _breves_osts(:one)
  end

  test "visiting the index" do
    visit _breves_osts_url
    assert_selector "h1", text: "Breves osts"
  end

  test "should create breves ost" do
    visit _breves_osts_url
    click_on "New breves ost"

    fill_in "Name", with: @_breves_ost.name
    click_on "Create Breves ost"

    assert_text "Breves ost was successfully created"
    click_on "Back"
  end

  test "should update Breves ost" do
    visit _breves_ost_url(@_breves_ost)
    click_on "Edit this breves ost", match: :first

    fill_in "Name", with: @_breves_ost.name
    click_on "Update Breves ost"

    assert_text "Breves ost was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves ost" do
    visit _breves_ost_url(@_breves_ost)
    click_on "Destroy this breves ost", match: :first

    assert_text "Breves ost was successfully destroyed"
  end
end
