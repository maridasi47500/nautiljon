require "application_system_test_case"

class AnimesSocietePeopleTest < ApplicationSystemTestCase
  setup do
    @animes_societe_person = animes_societe_people(:one)
  end

  test "visiting the index" do
    visit animes_societe_people_url
    assert_selector "h1", text: "Animes societe people"
  end

  test "should create animes societe person" do
    visit animes_societe_people_url
    click_on "New animes societe person"

    fill_in "Name", with: @animes_societe_person.name
    click_on "Create Animes societe person"

    assert_text "Animes societe person was successfully created"
    click_on "Back"
  end

  test "should update Animes societe person" do
    visit animes_societe_person_url(@animes_societe_person)
    click_on "Edit this animes societe person", match: :first

    fill_in "Name", with: @animes_societe_person.name
    click_on "Update Animes societe person"

    assert_text "Animes societe person was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes societe person" do
    visit animes_societe_person_url(@animes_societe_person)
    click_on "Destroy this animes societe person", match: :first

    assert_text "Animes societe person was successfully destroyed"
  end
end
