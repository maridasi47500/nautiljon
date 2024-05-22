require "application_system_test_case"

class OstsPeopleTest < ApplicationSystemTestCase
  setup do
    @osts_person = osts_people(:one)
  end

  test "visiting the index" do
    visit osts_people_url
    assert_selector "h1", text: "Osts people"
  end

  test "should create osts person" do
    visit osts_people_url
    click_on "New osts person"

    fill_in "Name", with: @osts_person.name
    click_on "Create Osts person"

    assert_text "Osts person was successfully created"
    click_on "Back"
  end

  test "should update Osts person" do
    visit osts_person_url(@osts_person)
    click_on "Edit this osts person", match: :first

    fill_in "Name", with: @osts_person.name
    click_on "Update Osts person"

    assert_text "Osts person was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts person" do
    visit osts_person_url(@osts_person)
    click_on "Destroy this osts person", match: :first

    assert_text "Osts person was successfully destroyed"
  end
end
