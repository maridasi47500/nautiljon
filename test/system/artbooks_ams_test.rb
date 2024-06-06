require "application_system_test_case"

class ArtbooksAmsTest < ApplicationSystemTestCase
  setup do
    @artbooks_am = artbooks_ams(:one)
  end

  test "visiting the index" do
    visit artbooks_ams_url
    assert_selector "h1", text: "Artbooks ams"
  end

  test "should create artbooks am" do
    visit artbooks_ams_url
    click_on "New artbooks am"

    fill_in "Name", with: @artbooks_am.name
    click_on "Create Artbooks am"

    assert_text "Artbooks am was successfully created"
    click_on "Back"
  end

  test "should update Artbooks am" do
    visit artbooks_am_url(@artbooks_am)
    click_on "Edit this artbooks am", match: :first

    fill_in "Name", with: @artbooks_am.name
    click_on "Update Artbooks am"

    assert_text "Artbooks am was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks am" do
    visit artbooks_am_url(@artbooks_am)
    click_on "Destroy this artbooks am", match: :first

    assert_text "Artbooks am was successfully destroyed"
  end
end
