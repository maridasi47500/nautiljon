require "application_system_test_case"

class RecettesPlatsTest < ApplicationSystemTestCase
  setup do
    @_recettes_plat = _recettes_plats(:one)
  end

  test "visiting the index" do
    visit _recettes_plats_url
    assert_selector "h1", text: "Recettes plats"
  end

  test "should create recettes plat" do
    visit _recettes_plats_url
    click_on "New recettes plat"

    fill_in "Name", with: @_recettes_plat.name
    click_on "Create Recettes plat"

    assert_text "Recettes plat was successfully created"
    click_on "Back"
  end

  test "should update Recettes plat" do
    visit _recettes_plat_url(@_recettes_plat)
    click_on "Edit this recettes plat", match: :first

    fill_in "Name", with: @_recettes_plat.name
    click_on "Update Recettes plat"

    assert_text "Recettes plat was successfully updated"
    click_on "Back"
  end

  test "should destroy Recettes plat" do
    visit _recettes_plat_url(@_recettes_plat)
    click_on "Destroy this recettes plat", match: :first

    assert_text "Recettes plat was successfully destroyed"
  end
end
