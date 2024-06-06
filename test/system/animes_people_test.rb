require "application_system_test_case"

class AnimesPeopleTest < ApplicationSystemTestCase
  setup do
    @animes_person = animes_people(:one)
  end

  test "visiting the index" do
    visit animes_people_url
    assert_selector "h1", text: "Animes people"
  end

  test "should create animes person" do
    visit animes_people_url
    click_on "New animes person"

    fill_in "Name", with: @animes_person.name
    click_on "Create Animes person"

    assert_text "Animes person was successfully created"
    click_on "Back"
  end

  test "should update Animes person" do
    visit animes_person_url(@animes_person)
    click_on "Edit this animes person", match: :first

    fill_in "Name", with: @animes_person.name
    click_on "Update Animes person"

    assert_text "Animes person was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes person" do
    visit animes_person_url(@animes_person)
    click_on "Destroy this animes person", match: :first

    assert_text "Animes person was successfully destroyed"
  end
end
