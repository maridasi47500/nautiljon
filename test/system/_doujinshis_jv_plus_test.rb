require "application_system_test_case"

class DoujinshisJvPlusTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_jv_plu = _doujinshis_jv_plus(:one)
  end

  test "visiting the index" do
    visit _doujinshis_jv_plus_url
    assert_selector "h1", text: "Doujinshis jv plus"
  end

  test "should create doujinshis jv plu" do
    visit _doujinshis_jv_plus_url
    click_on "New doujinshis jv plu"

    fill_in "Name", with: @_doujinshis_jv_plu.name
    click_on "Create Doujinshis jv plu"

    assert_text "Doujinshis jv plu was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis jv plu" do
    visit _doujinshis_jv_plu_url(@_doujinshis_jv_plu)
    click_on "Edit this doujinshis jv plu", match: :first

    fill_in "Name", with: @_doujinshis_jv_plu.name
    click_on "Update Doujinshis jv plu"

    assert_text "Doujinshis jv plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis jv plu" do
    visit _doujinshis_jv_plu_url(@_doujinshis_jv_plu)
    click_on "Destroy this doujinshis jv plu", match: :first

    assert_text "Doujinshis jv plu was successfully destroyed"
  end
end
