require "application_system_test_case"

class DoujinshisPersoPlusTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_perso_plu = _doujinshis_perso_plus(:one)
  end

  test "visiting the index" do
    visit _doujinshis_perso_plus_url
    assert_selector "h1", text: "Doujinshis perso plus"
  end

  test "should create doujinshis perso plu" do
    visit _doujinshis_perso_plus_url
    click_on "New doujinshis perso plu"

    fill_in "Name", with: @_doujinshis_perso_plu.name
    click_on "Create Doujinshis perso plu"

    assert_text "Doujinshis perso plu was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis perso plu" do
    visit _doujinshis_perso_plu_url(@_doujinshis_perso_plu)
    click_on "Edit this doujinshis perso plu", match: :first

    fill_in "Name", with: @_doujinshis_perso_plu.name
    click_on "Update Doujinshis perso plu"

    assert_text "Doujinshis perso plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis perso plu" do
    visit _doujinshis_perso_plu_url(@_doujinshis_perso_plu)
    click_on "Destroy this doujinshis perso plu", match: :first

    assert_text "Doujinshis perso plu was successfully destroyed"
  end
end
