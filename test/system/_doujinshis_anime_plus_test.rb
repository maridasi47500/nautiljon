require "application_system_test_case"

class DoujinshisAnimePlusTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_anime_plu = _doujinshis_anime_plus(:one)
  end

  test "visiting the index" do
    visit _doujinshis_anime_plus_url
    assert_selector "h1", text: "Doujinshis anime plus"
  end

  test "should create doujinshis anime plu" do
    visit _doujinshis_anime_plus_url
    click_on "New doujinshis anime plu"

    fill_in "Name", with: @_doujinshis_anime_plu.name
    click_on "Create Doujinshis anime plu"

    assert_text "Doujinshis anime plu was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis anime plu" do
    visit _doujinshis_anime_plu_url(@_doujinshis_anime_plu)
    click_on "Edit this doujinshis anime plu", match: :first

    fill_in "Name", with: @_doujinshis_anime_plu.name
    click_on "Update Doujinshis anime plu"

    assert_text "Doujinshis anime plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis anime plu" do
    visit _doujinshis_anime_plu_url(@_doujinshis_anime_plu)
    click_on "Destroy this doujinshis anime plu", match: :first

    assert_text "Doujinshis anime plu was successfully destroyed"
  end
end
