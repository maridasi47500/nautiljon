require "application_system_test_case"

class ArtbooksDoujinshisTest < ApplicationSystemTestCase
  setup do
    @artbooks_doujinshi = artbooks_doujinshis(:one)
  end

  test "visiting the index" do
    visit artbooks_doujinshis_url
    assert_selector "h1", text: "Artbooks doujinshis"
  end

  test "should create artbooks doujinshi" do
    visit artbooks_doujinshis_url
    click_on "New artbooks doujinshi"

    fill_in "Name", with: @artbooks_doujinshi.name
    click_on "Create Artbooks doujinshi"

    assert_text "Artbooks doujinshi was successfully created"
    click_on "Back"
  end

  test "should update Artbooks doujinshi" do
    visit artbooks_doujinshi_url(@artbooks_doujinshi)
    click_on "Edit this artbooks doujinshi", match: :first

    fill_in "Name", with: @artbooks_doujinshi.name
    click_on "Update Artbooks doujinshi"

    assert_text "Artbooks doujinshi was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks doujinshi" do
    visit artbooks_doujinshi_url(@artbooks_doujinshi)
    click_on "Destroy this artbooks doujinshi", match: :first

    assert_text "Artbooks doujinshi was successfully destroyed"
  end
end
