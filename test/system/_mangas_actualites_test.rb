require "application_system_test_case"

class MangasActualitesTest < ApplicationSystemTestCase
  setup do
    @_mangas_actualite = _mangas_actualites(:one)
  end

  test "visiting the index" do
    visit _mangas_actualites_url
    assert_selector "h1", text: "Mangas actualites"
  end

  test "should create mangas actualite" do
    visit _mangas_actualites_url
    click_on "New mangas actualite"

    fill_in "Name", with: @_mangas_actualite.name
    click_on "Create Mangas actualite"

    assert_text "Mangas actualite was successfully created"
    click_on "Back"
  end

  test "should update Mangas actualite" do
    visit _mangas_actualite_url(@_mangas_actualite)
    click_on "Edit this mangas actualite", match: :first

    fill_in "Name", with: @_mangas_actualite.name
    click_on "Update Mangas actualite"

    assert_text "Mangas actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas actualite" do
    visit _mangas_actualite_url(@_mangas_actualite)
    click_on "Destroy this mangas actualite", match: :first

    assert_text "Mangas actualite was successfully destroyed"
  end
end
