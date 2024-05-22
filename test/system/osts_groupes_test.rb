require "application_system_test_case"

class OstsGroupesTest < ApplicationSystemTestCase
  setup do
    @osts_groupe = osts_groupes(:one)
  end

  test "visiting the index" do
    visit osts_groupes_url
    assert_selector "h1", text: "Osts groupes"
  end

  test "should create osts groupe" do
    visit osts_groupes_url
    click_on "New osts groupe"

    fill_in "Name", with: @osts_groupe.name
    click_on "Create Osts groupe"

    assert_text "Osts groupe was successfully created"
    click_on "Back"
  end

  test "should update Osts groupe" do
    visit osts_groupe_url(@osts_groupe)
    click_on "Edit this osts groupe", match: :first

    fill_in "Name", with: @osts_groupe.name
    click_on "Update Osts groupe"

    assert_text "Osts groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts groupe" do
    visit osts_groupe_url(@osts_groupe)
    click_on "Destroy this osts groupe", match: :first

    assert_text "Osts groupe was successfully destroyed"
  end
end
