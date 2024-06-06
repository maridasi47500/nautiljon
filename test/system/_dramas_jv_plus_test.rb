require "application_system_test_case"

class DramasJvPlusTest < ApplicationSystemTestCase
  setup do
    @_dramas_jv_plu = _dramas_jv_plus(:one)
  end

  test "visiting the index" do
    visit _dramas_jv_plus_url
    assert_selector "h1", text: "Dramas jv plus"
  end

  test "should create dramas jv plu" do
    visit _dramas_jv_plus_url
    click_on "New dramas jv plu"

    fill_in "Name", with: @_dramas_jv_plu.name
    click_on "Create Dramas jv plu"

    assert_text "Dramas jv plu was successfully created"
    click_on "Back"
  end

  test "should update Dramas jv plu" do
    visit _dramas_jv_plu_url(@_dramas_jv_plu)
    click_on "Edit this dramas jv plu", match: :first

    fill_in "Name", with: @_dramas_jv_plu.name
    click_on "Update Dramas jv plu"

    assert_text "Dramas jv plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas jv plu" do
    visit _dramas_jv_plu_url(@_dramas_jv_plu)
    click_on "Destroy this dramas jv plu", match: :first

    assert_text "Dramas jv plu was successfully destroyed"
  end
end
