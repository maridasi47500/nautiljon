require "application_system_test_case"

class BrevesSondagesTest < ApplicationSystemTestCase
  setup do
    @_breves_sondage = _breves_sondages(:one)
  end

  test "visiting the index" do
    visit _breves_sondages_url
    assert_selector "h1", text: "Breves sondages"
  end

  test "should create breves sondage" do
    visit _breves_sondages_url
    click_on "New breves sondage"

    fill_in "Name", with: @_breves_sondage.name
    click_on "Create Breves sondage"

    assert_text "Breves sondage was successfully created"
    click_on "Back"
  end

  test "should update Breves sondage" do
    visit _breves_sondage_url(@_breves_sondage)
    click_on "Edit this breves sondage", match: :first

    fill_in "Name", with: @_breves_sondage.name
    click_on "Update Breves sondage"

    assert_text "Breves sondage was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves sondage" do
    visit _breves_sondage_url(@_breves_sondage)
    click_on "Destroy this breves sondage", match: :first

    assert_text "Breves sondage was successfully destroyed"
  end
end
