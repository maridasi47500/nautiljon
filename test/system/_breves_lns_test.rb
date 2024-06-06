require "application_system_test_case"

class BrevesLnsTest < ApplicationSystemTestCase
  setup do
    @_breves_ln = _breves_lns(:one)
  end

  test "visiting the index" do
    visit _breves_lns_url
    assert_selector "h1", text: "Breves lns"
  end

  test "should create breves ln" do
    visit _breves_lns_url
    click_on "New breves ln"

    fill_in "Name", with: @_breves_ln.name
    click_on "Create Breves ln"

    assert_text "Breves ln was successfully created"
    click_on "Back"
  end

  test "should update Breves ln" do
    visit _breves_ln_url(@_breves_ln)
    click_on "Edit this breves ln", match: :first

    fill_in "Name", with: @_breves_ln.name
    click_on "Update Breves ln"

    assert_text "Breves ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves ln" do
    visit _breves_ln_url(@_breves_ln)
    click_on "Destroy this breves ln", match: :first

    assert_text "Breves ln was successfully destroyed"
  end
end
