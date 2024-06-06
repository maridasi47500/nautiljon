require "application_system_test_case"

class PersonnalitesLabelsexesTest < ApplicationSystemTestCase
  setup do
    @_personnalites_labels_ex = _personnalites_labels_exes(:one)
  end

  test "visiting the index" do
    visit _personnalites_labels_exes_url
    assert_selector "h1", text: "Personnalites labels exes"
  end

  test "should create personnalites labels ex" do
    visit _personnalites_labels_exes_url
    click_on "New personnalites labels ex"

    fill_in "Name", with: @_personnalites_labels_ex.name
    click_on "Create Personnalites labels ex"

    assert_text "Personnalites labels ex was successfully created"
    click_on "Back"
  end

  test "should update Personnalites labels ex" do
    visit _personnalites_labels_ex_url(@_personnalites_labels_ex)
    click_on "Edit this personnalites labels ex", match: :first

    fill_in "Name", with: @_personnalites_labels_ex.name
    click_on "Update Personnalites labels ex"

    assert_text "Personnalites labels ex was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites labels ex" do
    visit _personnalites_labels_ex_url(@_personnalites_labels_ex)
    click_on "Destroy this personnalites labels ex", match: :first

    assert_text "Personnalites labels ex was successfully destroyed"
  end
end
