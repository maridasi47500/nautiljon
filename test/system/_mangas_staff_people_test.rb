require "application_system_test_case"

class MangasStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @_mangas_staff_person = _mangas_staff_people(:one)
  end

  test "visiting the index" do
    visit _mangas_staff_people_url
    assert_selector "h1", text: "Mangas staff people"
  end

  test "should create mangas staff person" do
    visit _mangas_staff_people_url
    click_on "New mangas staff person"

    fill_in "Name", with: @_mangas_staff_person.name
    click_on "Create Mangas staff person"

    assert_text "Mangas staff person was successfully created"
    click_on "Back"
  end

  test "should update Mangas staff person" do
    visit _mangas_staff_person_url(@_mangas_staff_person)
    click_on "Edit this mangas staff person", match: :first

    fill_in "Name", with: @_mangas_staff_person.name
    click_on "Update Mangas staff person"

    assert_text "Mangas staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas staff person" do
    visit _mangas_staff_person_url(@_mangas_staff_person)
    click_on "Destroy this mangas staff person", match: :first

    assert_text "Mangas staff person was successfully destroyed"
  end
end
