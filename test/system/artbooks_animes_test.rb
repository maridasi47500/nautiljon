require "application_system_test_case"

class ArtbooksAnimesTest < ApplicationSystemTestCase
  setup do
    @artbooks_anime = artbooks_animes(:one)
  end

  test "visiting the index" do
    visit artbooks_animes_url
    assert_selector "h1", text: "Artbooks animes"
  end

  test "should create artbooks anime" do
    visit artbooks_animes_url
    click_on "New artbooks anime"

    fill_in "Name", with: @artbooks_anime.name
    click_on "Create Artbooks anime"

    assert_text "Artbooks anime was successfully created"
    click_on "Back"
  end

  test "should update Artbooks anime" do
    visit artbooks_anime_url(@artbooks_anime)
    click_on "Edit this artbooks anime", match: :first

    fill_in "Name", with: @artbooks_anime.name
    click_on "Update Artbooks anime"

    assert_text "Artbooks anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks anime" do
    visit artbooks_anime_url(@artbooks_anime)
    click_on "Destroy this artbooks anime", match: :first

    assert_text "Artbooks anime was successfully destroyed"
  end
end
