require "application_system_test_case"

class LivresMangasTest < ApplicationSystemTestCase
  setup do
    @_livres_manga = _livres_mangas(:one)
  end

  test "visiting the index" do
    visit _livres_mangas_url
    assert_selector "h1", text: "Livres mangas"
  end

  test "should create livres manga" do
    visit _livres_mangas_url
    click_on "New livres manga"

    fill_in "Name", with: @_livres_manga.name
    click_on "Create Livres manga"

    assert_text "Livres manga was successfully created"
    click_on "Back"
  end

  test "should update Livres manga" do
    visit _livres_manga_url(@_livres_manga)
    click_on "Edit this livres manga", match: :first

    fill_in "Name", with: @_livres_manga.name
    click_on "Update Livres manga"

    assert_text "Livres manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres manga" do
    visit _livres_manga_url(@_livres_manga)
    click_on "Destroy this livres manga", match: :first

    assert_text "Livres manga was successfully destroyed"
  end
end
