require "application_system_test_case"

class DramasDramaPlusTest < ApplicationSystemTestCase
  setup do
    @_dramas_drama_plu = _dramas_drama_plus(:one)
  end

  test "visiting the index" do
    visit _dramas_drama_plus_url
    assert_selector "h1", text: "Dramas drama plus"
  end

  test "should create dramas drama plu" do
    visit _dramas_drama_plus_url
    click_on "New dramas drama plu"

    fill_in "Name", with: @_dramas_drama_plu.name
    click_on "Create Dramas drama plu"

    assert_text "Dramas drama plu was successfully created"
    click_on "Back"
  end

  test "should update Dramas drama plu" do
    visit _dramas_drama_plu_url(@_dramas_drama_plu)
    click_on "Edit this dramas drama plu", match: :first

    fill_in "Name", with: @_dramas_drama_plu.name
    click_on "Update Dramas drama plu"

    assert_text "Dramas drama plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas drama plu" do
    visit _dramas_drama_plu_url(@_dramas_drama_plu)
    click_on "Destroy this dramas drama plu", match: :first

    assert_text "Dramas drama plu was successfully destroyed"
  end
end
