require "application_system_test_case"

class LivresPeopleTest < ApplicationSystemTestCase
  setup do
    @_livres_person = _livres_people(:one)
  end

  test "visiting the index" do
    visit _livres_people_url
    assert_selector "h1", text: "Livres people"
  end

  test "should create livres person" do
    visit _livres_people_url
    click_on "New livres person"

    fill_in "Name", with: @_livres_person.name
    click_on "Create Livres person"

    assert_text "Livres person was successfully created"
    click_on "Back"
  end

  test "should update Livres person" do
    visit _livres_person_url(@_livres_person)
    click_on "Edit this livres person", match: :first

    fill_in "Name", with: @_livres_person.name
    click_on "Update Livres person"

    assert_text "Livres person was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres person" do
    visit _livres_person_url(@_livres_person)
    click_on "Destroy this livres person", match: :first

    assert_text "Livres person was successfully destroyed"
  end
end
