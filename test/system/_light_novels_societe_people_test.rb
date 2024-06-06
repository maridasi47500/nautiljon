require "application_system_test_case"

class LightNovelsSocietePeopleTest < ApplicationSystemTestCase
  setup do
    @_light_novels_societe_person = _light_novels_societe_people(:one)
  end

  test "visiting the index" do
    visit _light_novels_societe_people_url
    assert_selector "h1", text: "Light novels societe people"
  end

  test "should create light novels societe person" do
    visit _light_novels_societe_people_url
    click_on "New light novels societe person"

    fill_in "Name", with: @_light_novels_societe_person.name
    click_on "Create Light novels societe person"

    assert_text "Light novels societe person was successfully created"
    click_on "Back"
  end

  test "should update Light novels societe person" do
    visit _light_novels_societe_person_url(@_light_novels_societe_person)
    click_on "Edit this light novels societe person", match: :first

    fill_in "Name", with: @_light_novels_societe_person.name
    click_on "Update Light novels societe person"

    assert_text "Light novels societe person was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels societe person" do
    visit _light_novels_societe_person_url(@_light_novels_societe_person)
    click_on "Destroy this light novels societe person", match: :first

    assert_text "Light novels societe person was successfully destroyed"
  end
end
