require "application_system_test_case"

class LivresPublicAvertisTest < ApplicationSystemTestCase
  setup do
    @_livres_public_averti = _livres_public_avertis(:one)
  end

  test "visiting the index" do
    visit _livres_public_avertis_url
    assert_selector "h1", text: "Livres public avertis"
  end

  test "should create livres public averti" do
    visit _livres_public_avertis_url
    click_on "New livres public averti"

    fill_in "Name", with: @_livres_public_averti.name
    click_on "Create Livres public averti"

    assert_text "Livres public averti was successfully created"
    click_on "Back"
  end

  test "should update Livres public averti" do
    visit _livres_public_averti_url(@_livres_public_averti)
    click_on "Edit this livres public averti", match: :first

    fill_in "Name", with: @_livres_public_averti.name
    click_on "Update Livres public averti"

    assert_text "Livres public averti was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres public averti" do
    visit _livres_public_averti_url(@_livres_public_averti)
    click_on "Destroy this livres public averti", match: :first

    assert_text "Livres public averti was successfully destroyed"
  end
end
