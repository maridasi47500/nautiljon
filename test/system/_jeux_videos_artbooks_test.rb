require "application_system_test_case"

class JeuxVideosArtbooksTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_artbook = _jeux_videos_artbooks(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_artbooks_url
    assert_selector "h1", text: "Jeux videos artbooks"
  end

  test "should create jeux videos artbook" do
    visit _jeux_videos_artbooks_url
    click_on "New jeux videos artbook"

    fill_in "Name", with: @_jeux_videos_artbook.name
    click_on "Create Jeux videos artbook"

    assert_text "Jeux videos artbook was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos artbook" do
    visit _jeux_videos_artbook_url(@_jeux_videos_artbook)
    click_on "Edit this jeux videos artbook", match: :first

    fill_in "Name", with: @_jeux_videos_artbook.name
    click_on "Update Jeux videos artbook"

    assert_text "Jeux videos artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos artbook" do
    visit _jeux_videos_artbook_url(@_jeux_videos_artbook)
    click_on "Destroy this jeux videos artbook", match: :first

    assert_text "Jeux videos artbook was successfully destroyed"
  end
end
