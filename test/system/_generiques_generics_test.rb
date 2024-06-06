require "application_system_test_case"

class GeneriquesGenericsTest < ApplicationSystemTestCase
  setup do
    @_generiques_generic = _generiques_generics(:one)
  end

  test "visiting the index" do
    visit _generiques_generics_url
    assert_selector "h1", text: "Generiques generics"
  end

  test "should create generiques generic" do
    visit _generiques_generics_url
    click_on "New generiques generic"

    fill_in "Name", with: @_generiques_generic.name
    click_on "Create Generiques generic"

    assert_text "Generiques generic was successfully created"
    click_on "Back"
  end

  test "should update Generiques generic" do
    visit _generiques_generic_url(@_generiques_generic)
    click_on "Edit this generiques generic", match: :first

    fill_in "Name", with: @_generiques_generic.name
    click_on "Update Generiques generic"

    assert_text "Generiques generic was successfully updated"
    click_on "Back"
  end

  test "should destroy Generiques generic" do
    visit _generiques_generic_url(@_generiques_generic)
    click_on "Destroy this generiques generic", match: :first

    assert_text "Generiques generic was successfully destroyed"
  end
end
