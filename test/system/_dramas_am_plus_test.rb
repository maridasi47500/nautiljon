require "application_system_test_case"

class DramasAmPlusTest < ApplicationSystemTestCase
  setup do
    @_dramas_am_plu = _dramas_am_plus(:one)
  end

  test "visiting the index" do
    visit _dramas_am_plus_url
    assert_selector "h1", text: "Dramas am plus"
  end

  test "should create dramas am plu" do
    visit _dramas_am_plus_url
    click_on "New dramas am plu"

    fill_in "Name", with: @_dramas_am_plu.name
    click_on "Create Dramas am plu"

    assert_text "Dramas am plu was successfully created"
    click_on "Back"
  end

  test "should update Dramas am plu" do
    visit _dramas_am_plu_url(@_dramas_am_plu)
    click_on "Edit this dramas am plu", match: :first

    fill_in "Name", with: @_dramas_am_plu.name
    click_on "Update Dramas am plu"

    assert_text "Dramas am plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas am plu" do
    visit _dramas_am_plu_url(@_dramas_am_plu)
    click_on "Destroy this dramas am plu", match: :first

    assert_text "Dramas am plu was successfully destroyed"
  end
end
