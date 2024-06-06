require "application_system_test_case"

class DoujinshisJvPersosTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_jv_perso = _doujinshis_jv_persos(:one)
  end

  test "visiting the index" do
    visit _doujinshis_jv_persos_url
    assert_selector "h1", text: "Doujinshis jv persos"
  end

  test "should create doujinshis jv perso" do
    visit _doujinshis_jv_persos_url
    click_on "New doujinshis jv perso"

    fill_in "Name", with: @_doujinshis_jv_perso.name
    click_on "Create Doujinshis jv perso"

    assert_text "Doujinshis jv perso was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis jv perso" do
    visit _doujinshis_jv_perso_url(@_doujinshis_jv_perso)
    click_on "Edit this doujinshis jv perso", match: :first

    fill_in "Name", with: @_doujinshis_jv_perso.name
    click_on "Update Doujinshis jv perso"

    assert_text "Doujinshis jv perso was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis jv perso" do
    visit _doujinshis_jv_perso_url(@_doujinshis_jv_perso)
    click_on "Destroy this doujinshis jv perso", match: :first

    assert_text "Doujinshis jv perso was successfully destroyed"
  end
end
