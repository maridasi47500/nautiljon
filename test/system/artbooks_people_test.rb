require "application_system_test_case"

class ArtbooksPeopleTest < ApplicationSystemTestCase
  setup do
    @artbooks_person = artbooks_people(:one)
  end

  test "visiting the index" do
    visit artbooks_people_url
    assert_selector "h1", text: "Artbooks people"
  end

  test "should create artbooks person" do
    visit artbooks_people_url
    click_on "New artbooks person"

    fill_in "Name", with: @artbooks_person.name
    click_on "Create Artbooks person"

    assert_text "Artbooks person was successfully created"
    click_on "Back"
  end

  test "should update Artbooks person" do
    visit artbooks_person_url(@artbooks_person)
    click_on "Edit this artbooks person", match: :first

    fill_in "Name", with: @artbooks_person.name
    click_on "Update Artbooks person"

    assert_text "Artbooks person was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks person" do
    visit artbooks_person_url(@artbooks_person)
    click_on "Destroy this artbooks person", match: :first

    assert_text "Artbooks person was successfully destroyed"
  end
end
