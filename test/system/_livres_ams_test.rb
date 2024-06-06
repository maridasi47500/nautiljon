require "application_system_test_case"

class LivresAmsTest < ApplicationSystemTestCase
  setup do
    @_livres_am = _livres_ams(:one)
  end

  test "visiting the index" do
    visit _livres_ams_url
    assert_selector "h1", text: "Livres ams"
  end

  test "should create livres am" do
    visit _livres_ams_url
    click_on "New livres am"

    fill_in "Name", with: @_livres_am.name
    click_on "Create Livres am"

    assert_text "Livres am was successfully created"
    click_on "Back"
  end

  test "should update Livres am" do
    visit _livres_am_url(@_livres_am)
    click_on "Edit this livres am", match: :first

    fill_in "Name", with: @_livres_am.name
    click_on "Update Livres am"

    assert_text "Livres am was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres am" do
    visit _livres_am_url(@_livres_am)
    click_on "Destroy this livres am", match: :first

    assert_text "Livres am was successfully destroyed"
  end
end
