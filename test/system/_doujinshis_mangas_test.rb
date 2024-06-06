require "application_system_test_case"

class DoujinshisMangasTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_manga = _doujinshis_mangas(:one)
  end

  test "visiting the index" do
    visit _doujinshis_mangas_url
    assert_selector "h1", text: "Doujinshis mangas"
  end

  test "should create doujinshis manga" do
    visit _doujinshis_mangas_url
    click_on "New doujinshis manga"

    fill_in "Name", with: @_doujinshis_manga.name
    click_on "Create Doujinshis manga"

    assert_text "Doujinshis manga was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis manga" do
    visit _doujinshis_manga_url(@_doujinshis_manga)
    click_on "Edit this doujinshis manga", match: :first

    fill_in "Name", with: @_doujinshis_manga.name
    click_on "Update Doujinshis manga"

    assert_text "Doujinshis manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis manga" do
    visit _doujinshis_manga_url(@_doujinshis_manga)
    click_on "Destroy this doujinshis manga", match: :first

    assert_text "Doujinshis manga was successfully destroyed"
  end
end
