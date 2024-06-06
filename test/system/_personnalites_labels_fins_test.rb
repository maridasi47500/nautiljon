require "application_system_test_case"

class PersonnalitesLabelsFinsTest < ApplicationSystemTestCase
  setup do
    @_personnalites_labels_fin = _personnalites_labels_fins(:one)
  end

  test "visiting the index" do
    visit _personnalites_labels_fins_url
    assert_selector "h1", text: "Personnalites labels fins"
  end

  test "should create personnalites labels fin" do
    visit _personnalites_labels_fins_url
    click_on "New personnalites labels fin"

    fill_in "Name", with: @_personnalites_labels_fin.name
    click_on "Create Personnalites labels fin"

    assert_text "Personnalites labels fin was successfully created"
    click_on "Back"
  end

  test "should update Personnalites labels fin" do
    visit _personnalites_labels_fin_url(@_personnalites_labels_fin)
    click_on "Edit this personnalites labels fin", match: :first

    fill_in "Name", with: @_personnalites_labels_fin.name
    click_on "Update Personnalites labels fin"

    assert_text "Personnalites labels fin was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites labels fin" do
    visit _personnalites_labels_fin_url(@_personnalites_labels_fin)
    click_on "Destroy this personnalites labels fin", match: :first

    assert_text "Personnalites labels fin was successfully destroyed"
  end
end
