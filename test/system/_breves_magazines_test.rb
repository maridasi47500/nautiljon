require "application_system_test_case"

class BrevesMagazinesTest < ApplicationSystemTestCase
  setup do
    @_breves_magazine = _breves_magazines(:one)
  end

  test "visiting the index" do
    visit _breves_magazines_url
    assert_selector "h1", text: "Breves magazines"
  end

  test "should create breves magazine" do
    visit _breves_magazines_url
    click_on "New breves magazine"

    fill_in "Name", with: @_breves_magazine.name
    click_on "Create Breves magazine"

    assert_text "Breves magazine was successfully created"
    click_on "Back"
  end

  test "should update Breves magazine" do
    visit _breves_magazine_url(@_breves_magazine)
    click_on "Edit this breves magazine", match: :first

    fill_in "Name", with: @_breves_magazine.name
    click_on "Update Breves magazine"

    assert_text "Breves magazine was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves magazine" do
    visit _breves_magazine_url(@_breves_magazine)
    click_on "Destroy this breves magazine", match: :first

    assert_text "Breves magazine was successfully destroyed"
  end
end
