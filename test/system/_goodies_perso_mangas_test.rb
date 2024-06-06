require "application_system_test_case"

class GoodiesPersoMangasTest < ApplicationSystemTestCase
  setup do
    @_goodies_perso_manga = _goodies_perso_mangas(:one)
  end

  test "visiting the index" do
    visit _goodies_perso_mangas_url
    assert_selector "h1", text: "Goodies perso mangas"
  end

  test "should create goodies perso manga" do
    visit _goodies_perso_mangas_url
    click_on "New goodies perso manga"

    fill_in "Name", with: @_goodies_perso_manga.name
    click_on "Create Goodies perso manga"

    assert_text "Goodies perso manga was successfully created"
    click_on "Back"
  end

  test "should update Goodies perso manga" do
    visit _goodies_perso_manga_url(@_goodies_perso_manga)
    click_on "Edit this goodies perso manga", match: :first

    fill_in "Name", with: @_goodies_perso_manga.name
    click_on "Update Goodies perso manga"

    assert_text "Goodies perso manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies perso manga" do
    visit _goodies_perso_manga_url(@_goodies_perso_manga)
    click_on "Destroy this goodies perso manga", match: :first

    assert_text "Goodies perso manga was successfully destroyed"
  end
end
