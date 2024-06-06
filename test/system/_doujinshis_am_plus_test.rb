require "application_system_test_case"

class DoujinshisAmPlusTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_am_plu = _doujinshis_am_plus(:one)
  end

  test "visiting the index" do
    visit _doujinshis_am_plus_url
    assert_selector "h1", text: "Doujinshis am plus"
  end

  test "should create doujinshis am plu" do
    visit _doujinshis_am_plus_url
    click_on "New doujinshis am plu"

    fill_in "Name", with: @_doujinshis_am_plu.name
    click_on "Create Doujinshis am plu"

    assert_text "Doujinshis am plu was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis am plu" do
    visit _doujinshis_am_plu_url(@_doujinshis_am_plu)
    click_on "Edit this doujinshis am plu", match: :first

    fill_in "Name", with: @_doujinshis_am_plu.name
    click_on "Update Doujinshis am plu"

    assert_text "Doujinshis am plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis am plu" do
    visit _doujinshis_am_plu_url(@_doujinshis_am_plu)
    click_on "Destroy this doujinshis am plu", match: :first

    assert_text "Doujinshis am plu was successfully destroyed"
  end
end
