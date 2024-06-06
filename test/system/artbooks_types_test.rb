require "application_system_test_case"

class ArtbooksTypesTest < ApplicationSystemTestCase
  setup do
    @artbooks_type = artbooks_types(:one)
  end

  test "visiting the index" do
    visit artbooks_types_url
    assert_selector "h1", text: "Artbooks types"
  end

  test "should create artbooks type" do
    visit artbooks_types_url
    click_on "New artbooks type"

    fill_in "Name", with: @artbooks_type.name
    click_on "Create Artbooks type"

    assert_text "Artbooks type was successfully created"
    click_on "Back"
  end

  test "should update Artbooks type" do
    visit artbooks_type_url(@artbooks_type)
    click_on "Edit this artbooks type", match: :first

    fill_in "Name", with: @artbooks_type.name
    click_on "Update Artbooks type"

    assert_text "Artbooks type was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks type" do
    visit artbooks_type_url(@artbooks_type)
    click_on "Destroy this artbooks type", match: :first

    assert_text "Artbooks type was successfully destroyed"
  end
end
