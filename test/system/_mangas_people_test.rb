require "application_system_test_case"

class MangasPeopleTest < ApplicationSystemTestCase
  setup do
    @_mangas_person = _mangas_people(:one)
  end

  test "visiting the index" do
    visit _mangas_people_url
    assert_selector "h1", text: "Mangas people"
  end

  test "should create mangas person" do
    visit _mangas_people_url
    click_on "New mangas person"

    fill_in "Name", with: @_mangas_person.name
    click_on "Create Mangas person"

    assert_text "Mangas person was successfully created"
    click_on "Back"
  end

  test "should update Mangas person" do
    visit _mangas_person_url(@_mangas_person)
    click_on "Edit this mangas person", match: :first

    fill_in "Name", with: @_mangas_person.name
    click_on "Update Mangas person"

    assert_text "Mangas person was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas person" do
    visit _mangas_person_url(@_mangas_person)
    click_on "Destroy this mangas person", match: :first

    assert_text "Mangas person was successfully destroyed"
  end
end
