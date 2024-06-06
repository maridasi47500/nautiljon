require "application_system_test_case"

class BrevesConcoursTest < ApplicationSystemTestCase
  setup do
    @_breves_concour = _breves_concours(:one)
  end

  test "visiting the index" do
    visit _breves_concours_url
    assert_selector "h1", text: "Breves concours"
  end

  test "should create breves concour" do
    visit _breves_concours_url
    click_on "New breves concour"

    fill_in "Name", with: @_breves_concour.name
    click_on "Create Breves concour"

    assert_text "Breves concour was successfully created"
    click_on "Back"
  end

  test "should update Breves concour" do
    visit _breves_concour_url(@_breves_concour)
    click_on "Edit this breves concour", match: :first

    fill_in "Name", with: @_breves_concour.name
    click_on "Update Breves concour"

    assert_text "Breves concour was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves concour" do
    visit _breves_concour_url(@_breves_concour)
    click_on "Destroy this breves concour", match: :first

    assert_text "Breves concour was successfully destroyed"
  end
end
