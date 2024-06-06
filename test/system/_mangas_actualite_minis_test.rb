require "application_system_test_case"

class MangasActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_mangas_actualite_mini = _mangas_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _mangas_actualite_minis_url
    assert_selector "h1", text: "Mangas actualite minis"
  end

  test "should create mangas actualite mini" do
    visit _mangas_actualite_minis_url
    click_on "New mangas actualite mini"

    fill_in "Name", with: @_mangas_actualite_mini.name
    click_on "Create Mangas actualite mini"

    assert_text "Mangas actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Mangas actualite mini" do
    visit _mangas_actualite_mini_url(@_mangas_actualite_mini)
    click_on "Edit this mangas actualite mini", match: :first

    fill_in "Name", with: @_mangas_actualite_mini.name
    click_on "Update Mangas actualite mini"

    assert_text "Mangas actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas actualite mini" do
    visit _mangas_actualite_mini_url(@_mangas_actualite_mini)
    click_on "Destroy this mangas actualite mini", match: :first

    assert_text "Mangas actualite mini was successfully destroyed"
  end
end
