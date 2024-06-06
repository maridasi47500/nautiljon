require "application_system_test_case"

class DoujinshisLnsTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_ln = _doujinshis_lns(:one)
  end

  test "visiting the index" do
    visit _doujinshis_lns_url
    assert_selector "h1", text: "Doujinshis lns"
  end

  test "should create doujinshis ln" do
    visit _doujinshis_lns_url
    click_on "New doujinshis ln"

    fill_in "Name", with: @_doujinshis_ln.name
    click_on "Create Doujinshis ln"

    assert_text "Doujinshis ln was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis ln" do
    visit _doujinshis_ln_url(@_doujinshis_ln)
    click_on "Edit this doujinshis ln", match: :first

    fill_in "Name", with: @_doujinshis_ln.name
    click_on "Update Doujinshis ln"

    assert_text "Doujinshis ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis ln" do
    visit _doujinshis_ln_url(@_doujinshis_ln)
    click_on "Destroy this doujinshis ln", match: :first

    assert_text "Doujinshis ln was successfully destroyed"
  end
end
