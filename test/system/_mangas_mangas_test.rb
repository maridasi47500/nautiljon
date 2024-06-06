require "application_system_test_case"

class MangasMangasTest < ApplicationSystemTestCase
  setup do
    @_mangas_manga = _mangas_mangas(:one)
  end

  test "visiting the index" do
    visit _mangas_mangas_url
    assert_selector "h1", text: "Mangas mangas"
  end

  test "should create mangas manga" do
    visit _mangas_mangas_url
    click_on "New mangas manga"

    fill_in "Name", with: @_mangas_manga.name
    click_on "Create Mangas manga"

    assert_text "Mangas manga was successfully created"
    click_on "Back"
  end

  test "should update Mangas manga" do
    visit _mangas_manga_url(@_mangas_manga)
    click_on "Edit this mangas manga", match: :first

    fill_in "Name", with: @_mangas_manga.name
    click_on "Update Mangas manga"

    assert_text "Mangas manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas manga" do
    visit _mangas_manga_url(@_mangas_manga)
    click_on "Destroy this mangas manga", match: :first

    assert_text "Mangas manga was successfully destroyed"
  end
end
