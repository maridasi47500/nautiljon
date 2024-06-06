require "application_system_test_case"

class ArtbooksMangasTest < ApplicationSystemTestCase
  setup do
    @artbooks_manga = artbooks_mangas(:one)
  end

  test "visiting the index" do
    visit artbooks_mangas_url
    assert_selector "h1", text: "Artbooks mangas"
  end

  test "should create artbooks manga" do
    visit artbooks_mangas_url
    click_on "New artbooks manga"

    fill_in "Name", with: @artbooks_manga.name
    click_on "Create Artbooks manga"

    assert_text "Artbooks manga was successfully created"
    click_on "Back"
  end

  test "should update Artbooks manga" do
    visit artbooks_manga_url(@artbooks_manga)
    click_on "Edit this artbooks manga", match: :first

    fill_in "Name", with: @artbooks_manga.name
    click_on "Update Artbooks manga"

    assert_text "Artbooks manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks manga" do
    visit artbooks_manga_url(@artbooks_manga)
    click_on "Destroy this artbooks manga", match: :first

    assert_text "Artbooks manga was successfully destroyed"
  end
end
