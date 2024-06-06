require "application_system_test_case"

class MangasDramasTest < ApplicationSystemTestCase
  setup do
    @_mangas_drama = _mangas_dramas(:one)
  end

  test "visiting the index" do
    visit _mangas_dramas_url
    assert_selector "h1", text: "Mangas dramas"
  end

  test "should create mangas drama" do
    visit _mangas_dramas_url
    click_on "New mangas drama"

    fill_in "Name", with: @_mangas_drama.name
    click_on "Create Mangas drama"

    assert_text "Mangas drama was successfully created"
    click_on "Back"
  end

  test "should update Mangas drama" do
    visit _mangas_drama_url(@_mangas_drama)
    click_on "Edit this mangas drama", match: :first

    fill_in "Name", with: @_mangas_drama.name
    click_on "Update Mangas drama"

    assert_text "Mangas drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas drama" do
    visit _mangas_drama_url(@_mangas_drama)
    click_on "Destroy this mangas drama", match: :first

    assert_text "Mangas drama was successfully destroyed"
  end
end
