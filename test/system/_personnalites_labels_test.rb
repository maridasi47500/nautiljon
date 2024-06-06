require "application_system_test_case"

class PersonnalitesLabelsTest < ApplicationSystemTestCase
  setup do
    @_personnalites_label = _personnalites_labels(:one)
  end

  test "visiting the index" do
    visit _personnalites_labels_url
    assert_selector "h1", text: "Personnalites labels"
  end

  test "should create personnalites label" do
    visit _personnalites_labels_url
    click_on "New personnalites label"

    fill_in "Name", with: @_personnalites_label.name
    click_on "Create Personnalites label"

    assert_text "Personnalites label was successfully created"
    click_on "Back"
  end

  test "should update Personnalites label" do
    visit _personnalites_label_url(@_personnalites_label)
    click_on "Edit this personnalites label", match: :first

    fill_in "Name", with: @_personnalites_label.name
    click_on "Update Personnalites label"

    assert_text "Personnalites label was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites label" do
    visit _personnalites_label_url(@_personnalites_label)
    click_on "Destroy this personnalites label", match: :first

    assert_text "Personnalites label was successfully destroyed"
  end
end
