require "application_system_test_case"

class ArtbooksIllustrationsTest < ApplicationSystemTestCase
  setup do
    @artbooks_illustration = artbooks_illustrations(:one)
  end

  test "visiting the index" do
    visit artbooks_illustrations_url
    assert_selector "h1", text: "Artbooks illustrations"
  end

  test "should create artbooks illustration" do
    visit artbooks_illustrations_url
    click_on "New artbooks illustration"

    fill_in "Name", with: @artbooks_illustration.name
    click_on "Create Artbooks illustration"

    assert_text "Artbooks illustration was successfully created"
    click_on "Back"
  end

  test "should update Artbooks illustration" do
    visit artbooks_illustration_url(@artbooks_illustration)
    click_on "Edit this artbooks illustration", match: :first

    fill_in "Name", with: @artbooks_illustration.name
    click_on "Update Artbooks illustration"

    assert_text "Artbooks illustration was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks illustration" do
    visit artbooks_illustration_url(@artbooks_illustration)
    click_on "Destroy this artbooks illustration", match: :first

    assert_text "Artbooks illustration was successfully destroyed"
  end
end
