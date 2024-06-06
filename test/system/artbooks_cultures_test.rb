require "application_system_test_case"

class ArtbooksCulturesTest < ApplicationSystemTestCase
  setup do
    @artbooks_culture = artbooks_cultures(:one)
  end

  test "visiting the index" do
    visit artbooks_cultures_url
    assert_selector "h1", text: "Artbooks cultures"
  end

  test "should create artbooks culture" do
    visit artbooks_cultures_url
    click_on "New artbooks culture"

    fill_in "Name", with: @artbooks_culture.name
    click_on "Create Artbooks culture"

    assert_text "Artbooks culture was successfully created"
    click_on "Back"
  end

  test "should update Artbooks culture" do
    visit artbooks_culture_url(@artbooks_culture)
    click_on "Edit this artbooks culture", match: :first

    fill_in "Name", with: @artbooks_culture.name
    click_on "Update Artbooks culture"

    assert_text "Artbooks culture was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks culture" do
    visit artbooks_culture_url(@artbooks_culture)
    click_on "Destroy this artbooks culture", match: :first

    assert_text "Artbooks culture was successfully destroyed"
  end
end
