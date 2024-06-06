require "application_system_test_case"

class PersonnageDanimesGoodiesTest < ApplicationSystemTestCase
  setup do
    @_personnage_danimes_goody = _personnage_danimes_goodies(:one)
  end

  test "visiting the index" do
    visit _personnage_danimes_goodies_url
    assert_selector "h1", text: "Personnage danimes goodies"
  end

  test "should create personnage danimes goody" do
    visit _personnage_danimes_goodies_url
    click_on "New personnage danimes goody"

    fill_in "Name", with: @_personnage_danimes_goody.name
    click_on "Create Personnage danimes goody"

    assert_text "Personnage danimes goody was successfully created"
    click_on "Back"
  end

  test "should update Personnage danimes goody" do
    visit _personnage_danimes_goody_url(@_personnage_danimes_goody)
    click_on "Edit this personnage danimes goody", match: :first

    fill_in "Name", with: @_personnage_danimes_goody.name
    click_on "Update Personnage danimes goody"

    assert_text "Personnage danimes goody was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage danimes goody" do
    visit _personnage_danimes_goody_url(@_personnage_danimes_goody)
    click_on "Destroy this personnage danimes goody", match: :first

    assert_text "Personnage danimes goody was successfully destroyed"
  end
end
