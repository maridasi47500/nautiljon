require "application_system_test_case"

class DoujinshisPersosTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_perso = _doujinshis_persos(:one)
  end

  test "visiting the index" do
    visit _doujinshis_persos_url
    assert_selector "h1", text: "Doujinshis persos"
  end

  test "should create doujinshis perso" do
    visit _doujinshis_persos_url
    click_on "New doujinshis perso"

    fill_in "Name", with: @_doujinshis_perso.name
    click_on "Create Doujinshis perso"

    assert_text "Doujinshis perso was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis perso" do
    visit _doujinshis_perso_url(@_doujinshis_perso)
    click_on "Edit this doujinshis perso", match: :first

    fill_in "Name", with: @_doujinshis_perso.name
    click_on "Update Doujinshis perso"

    assert_text "Doujinshis perso was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis perso" do
    visit _doujinshis_perso_url(@_doujinshis_perso)
    click_on "Destroy this doujinshis perso", match: :first

    assert_text "Doujinshis perso was successfully destroyed"
  end
end
