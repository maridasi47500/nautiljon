require "application_system_test_case"

class MangasDramaPlusTest < ApplicationSystemTestCase
  setup do
    @_mangas_drama_plu = _mangas_drama_plus(:one)
  end

  test "visiting the index" do
    visit _mangas_drama_plus_url
    assert_selector "h1", text: "Mangas drama plus"
  end

  test "should create mangas drama plu" do
    visit _mangas_drama_plus_url
    click_on "New mangas drama plu"

    fill_in "Name", with: @_mangas_drama_plu.name
    click_on "Create Mangas drama plu"

    assert_text "Mangas drama plu was successfully created"
    click_on "Back"
  end

  test "should update Mangas drama plu" do
    visit _mangas_drama_plu_url(@_mangas_drama_plu)
    click_on "Edit this mangas drama plu", match: :first

    fill_in "Name", with: @_mangas_drama_plu.name
    click_on "Update Mangas drama plu"

    assert_text "Mangas drama plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas drama plu" do
    visit _mangas_drama_plu_url(@_mangas_drama_plu)
    click_on "Destroy this mangas drama plu", match: :first

    assert_text "Mangas drama plu was successfully destroyed"
  end
end
