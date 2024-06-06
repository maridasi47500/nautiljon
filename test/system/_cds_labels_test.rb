require "application_system_test_case"

class CdsLabelsTest < ApplicationSystemTestCase
  setup do
    @_cds_label = _cds_labels(:one)
  end

  test "visiting the index" do
    visit _cds_labels_url
    assert_selector "h1", text: "Cds labels"
  end

  test "should create cds label" do
    visit _cds_labels_url
    click_on "New cds label"

    fill_in "Name", with: @_cds_label.name
    click_on "Create Cds label"

    assert_text "Cds label was successfully created"
    click_on "Back"
  end

  test "should update Cds label" do
    visit _cds_label_url(@_cds_label)
    click_on "Edit this cds label", match: :first

    fill_in "Name", with: @_cds_label.name
    click_on "Update Cds label"

    assert_text "Cds label was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds label" do
    visit _cds_label_url(@_cds_label)
    click_on "Destroy this cds label", match: :first

    assert_text "Cds label was successfully destroyed"
  end
end
