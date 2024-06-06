require "application_system_test_case"

class GoodiesJvPersosTest < ApplicationSystemTestCase
  setup do
    @_goodies_jv_perso = _goodies_jv_persos(:one)
  end

  test "visiting the index" do
    visit _goodies_jv_persos_url
    assert_selector "h1", text: "Goodies jv persos"
  end

  test "should create goodies jv perso" do
    visit _goodies_jv_persos_url
    click_on "New goodies jv perso"

    fill_in "Name", with: @_goodies_jv_perso.name
    click_on "Create Goodies jv perso"

    assert_text "Goodies jv perso was successfully created"
    click_on "Back"
  end

  test "should update Goodies jv perso" do
    visit _goodies_jv_perso_url(@_goodies_jv_perso)
    click_on "Edit this goodies jv perso", match: :first

    fill_in "Name", with: @_goodies_jv_perso.name
    click_on "Update Goodies jv perso"

    assert_text "Goodies jv perso was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies jv perso" do
    visit _goodies_jv_perso_url(@_goodies_jv_perso)
    click_on "Destroy this goodies jv perso", match: :first

    assert_text "Goodies jv perso was successfully destroyed"
  end
end
