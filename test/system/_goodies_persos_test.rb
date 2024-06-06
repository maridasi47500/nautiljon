require "application_system_test_case"

class GoodiesPersosTest < ApplicationSystemTestCase
  setup do
    @_goodies_perso = _goodies_persos(:one)
  end

  test "visiting the index" do
    visit _goodies_persos_url
    assert_selector "h1", text: "Goodies persos"
  end

  test "should create goodies perso" do
    visit _goodies_persos_url
    click_on "New goodies perso"

    fill_in "Name", with: @_goodies_perso.name
    click_on "Create Goodies perso"

    assert_text "Goodies perso was successfully created"
    click_on "Back"
  end

  test "should update Goodies perso" do
    visit _goodies_perso_url(@_goodies_perso)
    click_on "Edit this goodies perso", match: :first

    fill_in "Name", with: @_goodies_perso.name
    click_on "Update Goodies perso"

    assert_text "Goodies perso was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies perso" do
    visit _goodies_perso_url(@_goodies_perso)
    click_on "Destroy this goodies perso", match: :first

    assert_text "Goodies perso was successfully destroyed"
  end
end
