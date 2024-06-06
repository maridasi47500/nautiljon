require "application_system_test_case"

class MangasCulturesTest < ApplicationSystemTestCase
  setup do
    @_mangas_culture = _mangas_cultures(:one)
  end

  test "visiting the index" do
    visit _mangas_cultures_url
    assert_selector "h1", text: "Mangas cultures"
  end

  test "should create mangas culture" do
    visit _mangas_cultures_url
    click_on "New mangas culture"

    fill_in "Name", with: @_mangas_culture.name
    click_on "Create Mangas culture"

    assert_text "Mangas culture was successfully created"
    click_on "Back"
  end

  test "should update Mangas culture" do
    visit _mangas_culture_url(@_mangas_culture)
    click_on "Edit this mangas culture", match: :first

    fill_in "Name", with: @_mangas_culture.name
    click_on "Update Mangas culture"

    assert_text "Mangas culture was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas culture" do
    visit _mangas_culture_url(@_mangas_culture)
    click_on "Destroy this mangas culture", match: :first

    assert_text "Mangas culture was successfully destroyed"
  end
end
