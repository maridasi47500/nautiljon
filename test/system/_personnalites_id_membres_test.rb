require "application_system_test_case"

class PersonnalitesIdMembresTest < ApplicationSystemTestCase
  setup do
    @_personnalites_id_membre = _personnalites_id_membres(:one)
  end

  test "visiting the index" do
    visit _personnalites_id_membres_url
    assert_selector "h1", text: "Personnalites id membres"
  end

  test "should create personnalites id membre" do
    visit _personnalites_id_membres_url
    click_on "New personnalites id membre"

    fill_in "Name", with: @_personnalites_id_membre.name
    click_on "Create Personnalites id membre"

    assert_text "Personnalites id membre was successfully created"
    click_on "Back"
  end

  test "should update Personnalites id membre" do
    visit _personnalites_id_membre_url(@_personnalites_id_membre)
    click_on "Edit this personnalites id membre", match: :first

    fill_in "Name", with: @_personnalites_id_membre.name
    click_on "Update Personnalites id membre"

    assert_text "Personnalites id membre was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites id membre" do
    visit _personnalites_id_membre_url(@_personnalites_id_membre)
    click_on "Destroy this personnalites id membre", match: :first

    assert_text "Personnalites id membre was successfully destroyed"
  end
end
