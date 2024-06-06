require "application_system_test_case"

class MangasSocietePeopleTest < ApplicationSystemTestCase
  setup do
    @_mangas_societe_person = _mangas_societe_people(:one)
  end

  test "visiting the index" do
    visit _mangas_societe_people_url
    assert_selector "h1", text: "Mangas societe people"
  end

  test "should create mangas societe person" do
    visit _mangas_societe_people_url
    click_on "New mangas societe person"

    fill_in "Name", with: @_mangas_societe_person.name
    click_on "Create Mangas societe person"

    assert_text "Mangas societe person was successfully created"
    click_on "Back"
  end

  test "should update Mangas societe person" do
    visit _mangas_societe_person_url(@_mangas_societe_person)
    click_on "Edit this mangas societe person", match: :first

    fill_in "Name", with: @_mangas_societe_person.name
    click_on "Update Mangas societe person"

    assert_text "Mangas societe person was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas societe person" do
    visit _mangas_societe_person_url(@_mangas_societe_person)
    click_on "Destroy this mangas societe person", match: :first

    assert_text "Mangas societe person was successfully destroyed"
  end
end
