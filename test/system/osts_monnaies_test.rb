require "application_system_test_case"

class OstsMonnaiesTest < ApplicationSystemTestCase
  setup do
    @osts_monnaie = osts_monnaies(:one)
  end

  test "visiting the index" do
    visit osts_monnaies_url
    assert_selector "h1", text: "Osts monnaies"
  end

  test "should create osts monnaie" do
    visit osts_monnaies_url
    click_on "New osts monnaie"

    fill_in "Name", with: @osts_monnaie.name
    click_on "Create Osts monnaie"

    assert_text "Osts monnaie was successfully created"
    click_on "Back"
  end

  test "should update Osts monnaie" do
    visit osts_monnaie_url(@osts_monnaie)
    click_on "Edit this osts monnaie", match: :first

    fill_in "Name", with: @osts_monnaie.name
    click_on "Update Osts monnaie"

    assert_text "Osts monnaie was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts monnaie" do
    visit osts_monnaie_url(@osts_monnaie)
    click_on "Destroy this osts monnaie", match: :first

    assert_text "Osts monnaie was successfully destroyed"
  end
end
