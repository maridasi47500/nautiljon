require "application_system_test_case"

class LivresLnsTest < ApplicationSystemTestCase
  setup do
    @_livres_ln = _livres_lns(:one)
  end

  test "visiting the index" do
    visit _livres_lns_url
    assert_selector "h1", text: "Livres lns"
  end

  test "should create livres ln" do
    visit _livres_lns_url
    click_on "New livres ln"

    fill_in "Name", with: @_livres_ln.name
    click_on "Create Livres ln"

    assert_text "Livres ln was successfully created"
    click_on "Back"
  end

  test "should update Livres ln" do
    visit _livres_ln_url(@_livres_ln)
    click_on "Edit this livres ln", match: :first

    fill_in "Name", with: @_livres_ln.name
    click_on "Update Livres ln"

    assert_text "Livres ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres ln" do
    visit _livres_ln_url(@_livres_ln)
    click_on "Destroy this livres ln", match: :first

    assert_text "Livres ln was successfully destroyed"
  end
end
