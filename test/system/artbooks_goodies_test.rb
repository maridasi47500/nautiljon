require "application_system_test_case"

class ArtbooksGoodiesTest < ApplicationSystemTestCase
  setup do
    @artbooks_goody = artbooks_goodies(:one)
  end

  test "visiting the index" do
    visit artbooks_goodies_url
    assert_selector "h1", text: "Artbooks goodies"
  end

  test "should create artbooks goody" do
    visit artbooks_goodies_url
    click_on "New artbooks goody"

    fill_in "Name", with: @artbooks_goody.name
    click_on "Create Artbooks goody"

    assert_text "Artbooks goody was successfully created"
    click_on "Back"
  end

  test "should update Artbooks goody" do
    visit artbooks_goody_url(@artbooks_goody)
    click_on "Edit this artbooks goody", match: :first

    fill_in "Name", with: @artbooks_goody.name
    click_on "Update Artbooks goody"

    assert_text "Artbooks goody was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks goody" do
    visit artbooks_goody_url(@artbooks_goody)
    click_on "Destroy this artbooks goody", match: :first

    assert_text "Artbooks goody was successfully destroyed"
  end
end
