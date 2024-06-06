require "application_system_test_case"

class DoujinshisDoujinshiPlusTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_doujinshi_plu = _doujinshis_doujinshi_plus(:one)
  end

  test "visiting the index" do
    visit _doujinshis_doujinshi_plus_url
    assert_selector "h1", text: "Doujinshis doujinshi plus"
  end

  test "should create doujinshis doujinshi plu" do
    visit _doujinshis_doujinshi_plus_url
    click_on "New doujinshis doujinshi plu"

    fill_in "Name", with: @_doujinshis_doujinshi_plu.name
    click_on "Create Doujinshis doujinshi plu"

    assert_text "Doujinshis doujinshi plu was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis doujinshi plu" do
    visit _doujinshis_doujinshi_plu_url(@_doujinshis_doujinshi_plu)
    click_on "Edit this doujinshis doujinshi plu", match: :first

    fill_in "Name", with: @_doujinshis_doujinshi_plu.name
    click_on "Update Doujinshis doujinshi plu"

    assert_text "Doujinshis doujinshi plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis doujinshi plu" do
    visit _doujinshis_doujinshi_plu_url(@_doujinshis_doujinshi_plu)
    click_on "Destroy this doujinshis doujinshi plu", match: :first

    assert_text "Doujinshis doujinshi plu was successfully destroyed"
  end
end
