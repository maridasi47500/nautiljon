require "application_system_test_case"

class ArtbooksArtbooksTest < ApplicationSystemTestCase
  setup do
    @artbooks_artbook = artbooks_artbooks(:one)
  end

  test "visiting the index" do
    visit artbooks_artbooks_url
    assert_selector "h1", text: "Artbooks artbooks"
  end

  test "should create artbooks artbook" do
    visit artbooks_artbooks_url
    click_on "New artbooks artbook"

    fill_in "Name", with: @artbooks_artbook.name
    click_on "Create Artbooks artbook"

    assert_text "Artbooks artbook was successfully created"
    click_on "Back"
  end

  test "should update Artbooks artbook" do
    visit artbooks_artbook_url(@artbooks_artbook)
    click_on "Edit this artbooks artbook", match: :first

    fill_in "Name", with: @artbooks_artbook.name
    click_on "Update Artbooks artbook"

    assert_text "Artbooks artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks artbook" do
    visit artbooks_artbook_url(@artbooks_artbook)
    click_on "Destroy this artbooks artbook", match: :first

    assert_text "Artbooks artbook was successfully destroyed"
  end
end
