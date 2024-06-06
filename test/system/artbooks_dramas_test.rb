require "application_system_test_case"

class ArtbooksDramasTest < ApplicationSystemTestCase
  setup do
    @artbooks_drama = artbooks_dramas(:one)
  end

  test "visiting the index" do
    visit artbooks_dramas_url
    assert_selector "h1", text: "Artbooks dramas"
  end

  test "should create artbooks drama" do
    visit artbooks_dramas_url
    click_on "New artbooks drama"

    fill_in "Name", with: @artbooks_drama.name
    click_on "Create Artbooks drama"

    assert_text "Artbooks drama was successfully created"
    click_on "Back"
  end

  test "should update Artbooks drama" do
    visit artbooks_drama_url(@artbooks_drama)
    click_on "Edit this artbooks drama", match: :first

    fill_in "Name", with: @artbooks_drama.name
    click_on "Update Artbooks drama"

    assert_text "Artbooks drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks drama" do
    visit artbooks_drama_url(@artbooks_drama)
    click_on "Destroy this artbooks drama", match: :first

    assert_text "Artbooks drama was successfully destroyed"
  end
end
