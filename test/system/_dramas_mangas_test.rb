require "application_system_test_case"

class DramasMangasTest < ApplicationSystemTestCase
  setup do
    @_dramas_manga = _dramas_mangas(:one)
  end

  test "visiting the index" do
    visit _dramas_mangas_url
    assert_selector "h1", text: "Dramas mangas"
  end

  test "should create dramas manga" do
    visit _dramas_mangas_url
    click_on "New dramas manga"

    fill_in "Name", with: @_dramas_manga.name
    click_on "Create Dramas manga"

    assert_text "Dramas manga was successfully created"
    click_on "Back"
  end

  test "should update Dramas manga" do
    visit _dramas_manga_url(@_dramas_manga)
    click_on "Edit this dramas manga", match: :first

    fill_in "Name", with: @_dramas_manga.name
    click_on "Update Dramas manga"

    assert_text "Dramas manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas manga" do
    visit _dramas_manga_url(@_dramas_manga)
    click_on "Destroy this dramas manga", match: :first

    assert_text "Dramas manga was successfully destroyed"
  end
end
