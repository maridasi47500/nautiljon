require "application_system_test_case"

class GoodiesMangasTest < ApplicationSystemTestCase
  setup do
    @_goodies_manga = _goodies_mangas(:one)
  end

  test "visiting the index" do
    visit _goodies_mangas_url
    assert_selector "h1", text: "Goodies mangas"
  end

  test "should create goodies manga" do
    visit _goodies_mangas_url
    click_on "New goodies manga"

    fill_in "Name", with: @_goodies_manga.name
    click_on "Create Goodies manga"

    assert_text "Goodies manga was successfully created"
    click_on "Back"
  end

  test "should update Goodies manga" do
    visit _goodies_manga_url(@_goodies_manga)
    click_on "Edit this goodies manga", match: :first

    fill_in "Name", with: @_goodies_manga.name
    click_on "Update Goodies manga"

    assert_text "Goodies manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies manga" do
    visit _goodies_manga_url(@_goodies_manga)
    click_on "Destroy this goodies manga", match: :first

    assert_text "Goodies manga was successfully destroyed"
  end
end
