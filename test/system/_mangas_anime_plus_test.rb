require "application_system_test_case"

class MangasAnimePlusTest < ApplicationSystemTestCase
  setup do
    @_mangas_anime_plu = _mangas_anime_plus(:one)
  end

  test "visiting the index" do
    visit _mangas_anime_plus_url
    assert_selector "h1", text: "Mangas anime plus"
  end

  test "should create mangas anime plu" do
    visit _mangas_anime_plus_url
    click_on "New mangas anime plu"

    fill_in "Name", with: @_mangas_anime_plu.name
    click_on "Create Mangas anime plu"

    assert_text "Mangas anime plu was successfully created"
    click_on "Back"
  end

  test "should update Mangas anime plu" do
    visit _mangas_anime_plu_url(@_mangas_anime_plu)
    click_on "Edit this mangas anime plu", match: :first

    fill_in "Name", with: @_mangas_anime_plu.name
    click_on "Update Mangas anime plu"

    assert_text "Mangas anime plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas anime plu" do
    visit _mangas_anime_plu_url(@_mangas_anime_plu)
    click_on "Destroy this mangas anime plu", match: :first

    assert_text "Mangas anime plu was successfully destroyed"
  end
end
