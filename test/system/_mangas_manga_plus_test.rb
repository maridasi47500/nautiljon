require "application_system_test_case"

class MangasMangaPlusTest < ApplicationSystemTestCase
  setup do
    @_mangas_manga_plu = _mangas_manga_plus(:one)
  end

  test "visiting the index" do
    visit _mangas_manga_plus_url
    assert_selector "h1", text: "Mangas manga plus"
  end

  test "should create mangas manga plu" do
    visit _mangas_manga_plus_url
    click_on "New mangas manga plu"

    fill_in "Name", with: @_mangas_manga_plu.name
    click_on "Create Mangas manga plu"

    assert_text "Mangas manga plu was successfully created"
    click_on "Back"
  end

  test "should update Mangas manga plu" do
    visit _mangas_manga_plu_url(@_mangas_manga_plu)
    click_on "Edit this mangas manga plu", match: :first

    fill_in "Name", with: @_mangas_manga_plu.name
    click_on "Update Mangas manga plu"

    assert_text "Mangas manga plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas manga plu" do
    visit _mangas_manga_plu_url(@_mangas_manga_plu)
    click_on "Destroy this mangas manga plu", match: :first

    assert_text "Mangas manga plu was successfully destroyed"
  end
end
