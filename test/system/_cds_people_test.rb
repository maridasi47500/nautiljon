require "application_system_test_case"

class CdsPeopleTest < ApplicationSystemTestCase
  setup do
    @_cds_person = _cds_people(:one)
  end

  test "visiting the index" do
    visit _cds_people_url
    assert_selector "h1", text: "Cds people"
  end

  test "should create cds person" do
    visit _cds_people_url
    click_on "New cds person"

    fill_in "Name", with: @_cds_person.name
    click_on "Create Cds person"

    assert_text "Cds person was successfully created"
    click_on "Back"
  end

  test "should update Cds person" do
    visit _cds_person_url(@_cds_person)
    click_on "Edit this cds person", match: :first

    fill_in "Name", with: @_cds_person.name
    click_on "Update Cds person"

    assert_text "Cds person was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds person" do
    visit _cds_person_url(@_cds_person)
    click_on "Destroy this cds person", match: :first

    assert_text "Cds person was successfully destroyed"
  end
end
