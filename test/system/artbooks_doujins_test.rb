require "application_system_test_case"

class ArtbooksDoujinsTest < ApplicationSystemTestCase
  setup do
    @artbooks_doujin = artbooks_doujins(:one)
  end

  test "visiting the index" do
    visit artbooks_doujins_url
    assert_selector "h1", text: "Artbooks doujins"
  end

  test "should create artbooks doujin" do
    visit artbooks_doujins_url
    click_on "New artbooks doujin"

    fill_in "Name", with: @artbooks_doujin.name
    click_on "Create Artbooks doujin"

    assert_text "Artbooks doujin was successfully created"
    click_on "Back"
  end

  test "should update Artbooks doujin" do
    visit artbooks_doujin_url(@artbooks_doujin)
    click_on "Edit this artbooks doujin", match: :first

    fill_in "Name", with: @artbooks_doujin.name
    click_on "Update Artbooks doujin"

    assert_text "Artbooks doujin was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks doujin" do
    visit artbooks_doujin_url(@artbooks_doujin)
    click_on "Destroy this artbooks doujin", match: :first

    assert_text "Artbooks doujin was successfully destroyed"
  end
end
