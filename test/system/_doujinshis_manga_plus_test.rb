require "application_system_test_case"

class DoujinshisMangaPlusTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_manga_plu = _doujinshis_manga_plus(:one)
  end

  test "visiting the index" do
    visit _doujinshis_manga_plus_url
    assert_selector "h1", text: "Doujinshis manga plus"
  end

  test "should create doujinshis manga plu" do
    visit _doujinshis_manga_plus_url
    click_on "New doujinshis manga plu"

    fill_in "Name", with: @_doujinshis_manga_plu.name
    click_on "Create Doujinshis manga plu"

    assert_text "Doujinshis manga plu was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis manga plu" do
    visit _doujinshis_manga_plu_url(@_doujinshis_manga_plu)
    click_on "Edit this doujinshis manga plu", match: :first

    fill_in "Name", with: @_doujinshis_manga_plu.name
    click_on "Update Doujinshis manga plu"

    assert_text "Doujinshis manga plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis manga plu" do
    visit _doujinshis_manga_plu_url(@_doujinshis_manga_plu)
    click_on "Destroy this doujinshis manga plu", match: :first

    assert_text "Doujinshis manga plu was successfully destroyed"
  end
end
