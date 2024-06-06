require "application_system_test_case"

class LivresTypesTest < ApplicationSystemTestCase
  setup do
    @_livres_type = _livres_types(:one)
  end

  test "visiting the index" do
    visit _livres_types_url
    assert_selector "h1", text: "Livres types"
  end

  test "should create livres type" do
    visit _livres_types_url
    click_on "New livres type"

    fill_in "Name", with: @_livres_type.name
    click_on "Create Livres type"

    assert_text "Livres type was successfully created"
    click_on "Back"
  end

  test "should update Livres type" do
    visit _livres_type_url(@_livres_type)
    click_on "Edit this livres type", match: :first

    fill_in "Name", with: @_livres_type.name
    click_on "Update Livres type"

    assert_text "Livres type was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres type" do
    visit _livres_type_url(@_livres_type)
    click_on "Destroy this livres type", match: :first

    assert_text "Livres type was successfully destroyed"
  end
end
