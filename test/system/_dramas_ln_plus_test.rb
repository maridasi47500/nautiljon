require "application_system_test_case"

class DramasLnPlusTest < ApplicationSystemTestCase
  setup do
    @_dramas_ln_plu = _dramas_ln_plus(:one)
  end

  test "visiting the index" do
    visit _dramas_ln_plus_url
    assert_selector "h1", text: "Dramas ln plus"
  end

  test "should create dramas ln plu" do
    visit _dramas_ln_plus_url
    click_on "New dramas ln plu"

    fill_in "Name", with: @_dramas_ln_plu.name
    click_on "Create Dramas ln plu"

    assert_text "Dramas ln plu was successfully created"
    click_on "Back"
  end

  test "should update Dramas ln plu" do
    visit _dramas_ln_plu_url(@_dramas_ln_plu)
    click_on "Edit this dramas ln plu", match: :first

    fill_in "Name", with: @_dramas_ln_plu.name
    click_on "Update Dramas ln plu"

    assert_text "Dramas ln plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas ln plu" do
    visit _dramas_ln_plu_url(@_dramas_ln_plu)
    click_on "Destroy this dramas ln plu", match: :first

    assert_text "Dramas ln plu was successfully destroyed"
  end
end
