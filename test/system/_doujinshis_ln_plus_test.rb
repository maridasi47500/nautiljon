require "application_system_test_case"

class DoujinshisLnPlusTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_ln_plu = _doujinshis_ln_plus(:one)
  end

  test "visiting the index" do
    visit _doujinshis_ln_plus_url
    assert_selector "h1", text: "Doujinshis ln plus"
  end

  test "should create doujinshis ln plu" do
    visit _doujinshis_ln_plus_url
    click_on "New doujinshis ln plu"

    fill_in "Name", with: @_doujinshis_ln_plu.name
    click_on "Create Doujinshis ln plu"

    assert_text "Doujinshis ln plu was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis ln plu" do
    visit _doujinshis_ln_plu_url(@_doujinshis_ln_plu)
    click_on "Edit this doujinshis ln plu", match: :first

    fill_in "Name", with: @_doujinshis_ln_plu.name
    click_on "Update Doujinshis ln plu"

    assert_text "Doujinshis ln plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis ln plu" do
    visit _doujinshis_ln_plu_url(@_doujinshis_ln_plu)
    click_on "Destroy this doujinshis ln plu", match: :first

    assert_text "Doujinshis ln plu was successfully destroyed"
  end
end
