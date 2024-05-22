require "application_system_test_case"

class OstsLabelsTest < ApplicationSystemTestCase
  setup do
    @osts_label = osts_labels(:one)
  end

  test "visiting the index" do
    visit osts_labels_url
    assert_selector "h1", text: "Osts labels"
  end

  test "should create osts label" do
    visit osts_labels_url
    click_on "New osts label"

    fill_in "Name", with: @osts_label.name
    click_on "Create Osts label"

    assert_text "Osts label was successfully created"
    click_on "Back"
  end

  test "should update Osts label" do
    visit osts_label_url(@osts_label)
    click_on "Edit this osts label", match: :first

    fill_in "Name", with: @osts_label.name
    click_on "Update Osts label"

    assert_text "Osts label was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts label" do
    visit osts_label_url(@osts_label)
    click_on "Destroy this osts label", match: :first

    assert_text "Osts label was successfully destroyed"
  end
end
