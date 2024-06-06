require "application_system_test_case"

class PersonnalitesLabelsDebutsTest < ApplicationSystemTestCase
  setup do
    @_personnalites_labels_debut = _personnalites_labels_debuts(:one)
  end

  test "visiting the index" do
    visit _personnalites_labels_debuts_url
    assert_selector "h1", text: "Personnalites labels debuts"
  end

  test "should create personnalites labels debut" do
    visit _personnalites_labels_debuts_url
    click_on "New personnalites labels debut"

    fill_in "Name", with: @_personnalites_labels_debut.name
    click_on "Create Personnalites labels debut"

    assert_text "Personnalites labels debut was successfully created"
    click_on "Back"
  end

  test "should update Personnalites labels debut" do
    visit _personnalites_labels_debut_url(@_personnalites_labels_debut)
    click_on "Edit this personnalites labels debut", match: :first

    fill_in "Name", with: @_personnalites_labels_debut.name
    click_on "Update Personnalites labels debut"

    assert_text "Personnalites labels debut was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites labels debut" do
    visit _personnalites_labels_debut_url(@_personnalites_labels_debut)
    click_on "Destroy this personnalites labels debut", match: :first

    assert_text "Personnalites labels debut was successfully destroyed"
  end
end
