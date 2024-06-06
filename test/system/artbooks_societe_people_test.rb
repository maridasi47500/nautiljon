require "application_system_test_case"

class ArtbooksSocietePeopleTest < ApplicationSystemTestCase
  setup do
    @artbooks_societe_person = artbooks_societe_people(:one)
  end

  test "visiting the index" do
    visit artbooks_societe_people_url
    assert_selector "h1", text: "Artbooks societe people"
  end

  test "should create artbooks societe person" do
    visit artbooks_societe_people_url
    click_on "New artbooks societe person"

    fill_in "Name", with: @artbooks_societe_person.name
    click_on "Create Artbooks societe person"

    assert_text "Artbooks societe person was successfully created"
    click_on "Back"
  end

  test "should update Artbooks societe person" do
    visit artbooks_societe_person_url(@artbooks_societe_person)
    click_on "Edit this artbooks societe person", match: :first

    fill_in "Name", with: @artbooks_societe_person.name
    click_on "Update Artbooks societe person"

    assert_text "Artbooks societe person was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks societe person" do
    visit artbooks_societe_person_url(@artbooks_societe_person)
    click_on "Destroy this artbooks societe person", match: :first

    assert_text "Artbooks societe person was successfully destroyed"
  end
end
