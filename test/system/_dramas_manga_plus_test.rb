require "application_system_test_case"

class DramasMangaPlusTest < ApplicationSystemTestCase
  setup do
    @_dramas_manga_plu = _dramas_manga_plus(:one)
  end

  test "visiting the index" do
    visit _dramas_manga_plus_url
    assert_selector "h1", text: "Dramas manga plus"
  end

  test "should create dramas manga plu" do
    visit _dramas_manga_plus_url
    click_on "New dramas manga plu"

    fill_in "Name", with: @_dramas_manga_plu.name
    click_on "Create Dramas manga plu"

    assert_text "Dramas manga plu was successfully created"
    click_on "Back"
  end

  test "should update Dramas manga plu" do
    visit _dramas_manga_plu_url(@_dramas_manga_plu)
    click_on "Edit this dramas manga plu", match: :first

    fill_in "Name", with: @_dramas_manga_plu.name
    click_on "Update Dramas manga plu"

    assert_text "Dramas manga plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas manga plu" do
    visit _dramas_manga_plu_url(@_dramas_manga_plu)
    click_on "Destroy this dramas manga plu", match: :first

    assert_text "Dramas manga plu was successfully destroyed"
  end
end
