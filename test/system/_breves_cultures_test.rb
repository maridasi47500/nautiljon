require "application_system_test_case"

class BrevesCulturesTest < ApplicationSystemTestCase
  setup do
    @_breves_culture = _breves_cultures(:one)
  end

  test "visiting the index" do
    visit _breves_cultures_url
    assert_selector "h1", text: "Breves cultures"
  end

  test "should create breves culture" do
    visit _breves_cultures_url
    click_on "New breves culture"

    fill_in "Name", with: @_breves_culture.name
    click_on "Create Breves culture"

    assert_text "Breves culture was successfully created"
    click_on "Back"
  end

  test "should update Breves culture" do
    visit _breves_culture_url(@_breves_culture)
    click_on "Edit this breves culture", match: :first

    fill_in "Name", with: @_breves_culture.name
    click_on "Update Breves culture"

    assert_text "Breves culture was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves culture" do
    visit _breves_culture_url(@_breves_culture)
    click_on "Destroy this breves culture", match: :first

    assert_text "Breves culture was successfully destroyed"
  end
end
