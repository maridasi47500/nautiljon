require "application_system_test_case"

class DramasAnimePlusTest < ApplicationSystemTestCase
  setup do
    @_dramas_anime_plu = _dramas_anime_plus(:one)
  end

  test "visiting the index" do
    visit _dramas_anime_plus_url
    assert_selector "h1", text: "Dramas anime plus"
  end

  test "should create dramas anime plu" do
    visit _dramas_anime_plus_url
    click_on "New dramas anime plu"

    fill_in "Name", with: @_dramas_anime_plu.name
    click_on "Create Dramas anime plu"

    assert_text "Dramas anime plu was successfully created"
    click_on "Back"
  end

  test "should update Dramas anime plu" do
    visit _dramas_anime_plu_url(@_dramas_anime_plu)
    click_on "Edit this dramas anime plu", match: :first

    fill_in "Name", with: @_dramas_anime_plu.name
    click_on "Update Dramas anime plu"

    assert_text "Dramas anime plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas anime plu" do
    visit _dramas_anime_plu_url(@_dramas_anime_plu)
    click_on "Destroy this dramas anime plu", match: :first

    assert_text "Dramas anime plu was successfully destroyed"
  end
end
