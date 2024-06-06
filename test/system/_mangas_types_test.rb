require "application_system_test_case"

class MangasTypesTest < ApplicationSystemTestCase
  setup do
    @_mangas_type = _mangas_types(:one)
  end

  test "visiting the index" do
    visit _mangas_types_url
    assert_selector "h1", text: "Mangas types"
  end

  test "should create mangas type" do
    visit _mangas_types_url
    click_on "New mangas type"

    fill_in "Name", with: @_mangas_type.name
    click_on "Create Mangas type"

    assert_text "Mangas type was successfully created"
    click_on "Back"
  end

  test "should update Mangas type" do
    visit _mangas_type_url(@_mangas_type)
    click_on "Edit this mangas type", match: :first

    fill_in "Name", with: @_mangas_type.name
    click_on "Update Mangas type"

    assert_text "Mangas type was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas type" do
    visit _mangas_type_url(@_mangas_type)
    click_on "Destroy this mangas type", match: :first

    assert_text "Mangas type was successfully destroyed"
  end
end
