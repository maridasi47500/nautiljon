require "application_system_test_case"

class AnimesArtbooksTest < ApplicationSystemTestCase
  setup do
    @animes_artbook = animes_artbooks(:one)
  end

  test "visiting the index" do
    visit animes_artbooks_url
    assert_selector "h1", text: "Animes artbooks"
  end

  test "should create animes artbook" do
    visit animes_artbooks_url
    click_on "New animes artbook"

    fill_in "Name", with: @animes_artbook.name
    click_on "Create Animes artbook"

    assert_text "Animes artbook was successfully created"
    click_on "Back"
  end

  test "should update Animes artbook" do
    visit animes_artbook_url(@animes_artbook)
    click_on "Edit this animes artbook", match: :first

    fill_in "Name", with: @animes_artbook.name
    click_on "Update Animes artbook"

    assert_text "Animes artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes artbook" do
    visit animes_artbook_url(@animes_artbook)
    click_on "Destroy this animes artbook", match: :first

    assert_text "Animes artbook was successfully destroyed"
  end
end
