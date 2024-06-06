require "application_system_test_case"

class MangasSondagesTest < ApplicationSystemTestCase
  setup do
    @_mangas_sondage = _mangas_sondages(:one)
  end

  test "visiting the index" do
    visit _mangas_sondages_url
    assert_selector "h1", text: "Mangas sondages"
  end

  test "should create mangas sondage" do
    visit _mangas_sondages_url
    click_on "New mangas sondage"

    fill_in "Name", with: @_mangas_sondage.name
    click_on "Create Mangas sondage"

    assert_text "Mangas sondage was successfully created"
    click_on "Back"
  end

  test "should update Mangas sondage" do
    visit _mangas_sondage_url(@_mangas_sondage)
    click_on "Edit this mangas sondage", match: :first

    fill_in "Name", with: @_mangas_sondage.name
    click_on "Update Mangas sondage"

    assert_text "Mangas sondage was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas sondage" do
    visit _mangas_sondage_url(@_mangas_sondage)
    click_on "Destroy this mangas sondage", match: :first

    assert_text "Mangas sondage was successfully destroyed"
  end
end
