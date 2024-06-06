require "application_system_test_case"

class GoodiesLnsTest < ApplicationSystemTestCase
  setup do
    @_goodies_ln = _goodies_lns(:one)
  end

  test "visiting the index" do
    visit _goodies_lns_url
    assert_selector "h1", text: "Goodies lns"
  end

  test "should create goodies ln" do
    visit _goodies_lns_url
    click_on "New goodies ln"

    fill_in "Name", with: @_goodies_ln.name
    click_on "Create Goodies ln"

    assert_text "Goodies ln was successfully created"
    click_on "Back"
  end

  test "should update Goodies ln" do
    visit _goodies_ln_url(@_goodies_ln)
    click_on "Edit this goodies ln", match: :first

    fill_in "Name", with: @_goodies_ln.name
    click_on "Update Goodies ln"

    assert_text "Goodies ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies ln" do
    visit _goodies_ln_url(@_goodies_ln)
    click_on "Destroy this goodies ln", match: :first

    assert_text "Goodies ln was successfully destroyed"
  end
end
