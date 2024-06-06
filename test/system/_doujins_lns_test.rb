require "application_system_test_case"

class DoujinsLnsTest < ApplicationSystemTestCase
  setup do
    @_doujins_ln = _doujins_lns(:one)
  end

  test "visiting the index" do
    visit _doujins_lns_url
    assert_selector "h1", text: "Doujins lns"
  end

  test "should create doujins ln" do
    visit _doujins_lns_url
    click_on "New doujins ln"

    fill_in "Name", with: @_doujins_ln.name
    click_on "Create Doujins ln"

    assert_text "Doujins ln was successfully created"
    click_on "Back"
  end

  test "should update Doujins ln" do
    visit _doujins_ln_url(@_doujins_ln)
    click_on "Edit this doujins ln", match: :first

    fill_in "Name", with: @_doujins_ln.name
    click_on "Update Doujins ln"

    assert_text "Doujins ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins ln" do
    visit _doujins_ln_url(@_doujins_ln)
    click_on "Destroy this doujins ln", match: :first

    assert_text "Doujins ln was successfully destroyed"
  end
end
