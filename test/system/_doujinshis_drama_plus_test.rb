require "application_system_test_case"

class DoujinshisDramaPlusTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_drama_plu = _doujinshis_drama_plus(:one)
  end

  test "visiting the index" do
    visit _doujinshis_drama_plus_url
    assert_selector "h1", text: "Doujinshis drama plus"
  end

  test "should create doujinshis drama plu" do
    visit _doujinshis_drama_plus_url
    click_on "New doujinshis drama plu"

    fill_in "Name", with: @_doujinshis_drama_plu.name
    click_on "Create Doujinshis drama plu"

    assert_text "Doujinshis drama plu was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis drama plu" do
    visit _doujinshis_drama_plu_url(@_doujinshis_drama_plu)
    click_on "Edit this doujinshis drama plu", match: :first

    fill_in "Name", with: @_doujinshis_drama_plu.name
    click_on "Update Doujinshis drama plu"

    assert_text "Doujinshis drama plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis drama plu" do
    visit _doujinshis_drama_plu_url(@_doujinshis_drama_plu)
    click_on "Destroy this doujinshis drama plu", match: :first

    assert_text "Doujinshis drama plu was successfully destroyed"
  end
end
