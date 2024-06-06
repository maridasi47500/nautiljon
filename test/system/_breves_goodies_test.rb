require "application_system_test_case"

class BrevesGoodiesTest < ApplicationSystemTestCase
  setup do
    @_breves_goody = _breves_goodies(:one)
  end

  test "visiting the index" do
    visit _breves_goodies_url
    assert_selector "h1", text: "Breves goodies"
  end

  test "should create breves goody" do
    visit _breves_goodies_url
    click_on "New breves goody"

    fill_in "Name", with: @_breves_goody.name
    click_on "Create Breves goody"

    assert_text "Breves goody was successfully created"
    click_on "Back"
  end

  test "should update Breves goody" do
    visit _breves_goody_url(@_breves_goody)
    click_on "Edit this breves goody", match: :first

    fill_in "Name", with: @_breves_goody.name
    click_on "Update Breves goody"

    assert_text "Breves goody was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves goody" do
    visit _breves_goody_url(@_breves_goody)
    click_on "Destroy this breves goody", match: :first

    assert_text "Breves goody was successfully destroyed"
  end
end
