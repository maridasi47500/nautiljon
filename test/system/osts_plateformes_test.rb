require "application_system_test_case"

class OstsPlateformesTest < ApplicationSystemTestCase
  setup do
    @osts_plateforme = osts_plateformes(:one)
  end

  test "visiting the index" do
    visit osts_plateformes_url
    assert_selector "h1", text: "Osts plateformes"
  end

  test "should create osts plateforme" do
    visit osts_plateformes_url
    click_on "New osts plateforme"

    fill_in "Name", with: @osts_plateforme.name
    click_on "Create Osts plateforme"

    assert_text "Osts plateforme was successfully created"
    click_on "Back"
  end

  test "should update Osts plateforme" do
    visit osts_plateforme_url(@osts_plateforme)
    click_on "Edit this osts plateforme", match: :first

    fill_in "Name", with: @osts_plateforme.name
    click_on "Update Osts plateforme"

    assert_text "Osts plateforme was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts plateforme" do
    visit osts_plateforme_url(@osts_plateforme)
    click_on "Destroy this osts plateforme", match: :first

    assert_text "Osts plateforme was successfully destroyed"
  end
end
