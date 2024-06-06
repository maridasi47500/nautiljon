require "application_system_test_case"

class LivresGoodiesTest < ApplicationSystemTestCase
  setup do
    @_livres_goody = _livres_goodies(:one)
  end

  test "visiting the index" do
    visit _livres_goodies_url
    assert_selector "h1", text: "Livres goodies"
  end

  test "should create livres goody" do
    visit _livres_goodies_url
    click_on "New livres goody"

    fill_in "Name", with: @_livres_goody.name
    click_on "Create Livres goody"

    assert_text "Livres goody was successfully created"
    click_on "Back"
  end

  test "should update Livres goody" do
    visit _livres_goody_url(@_livres_goody)
    click_on "Edit this livres goody", match: :first

    fill_in "Name", with: @_livres_goody.name
    click_on "Update Livres goody"

    assert_text "Livres goody was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres goody" do
    visit _livres_goody_url(@_livres_goody)
    click_on "Destroy this livres goody", match: :first

    assert_text "Livres goody was successfully destroyed"
  end
end
