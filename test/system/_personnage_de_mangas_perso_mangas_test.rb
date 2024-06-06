require "application_system_test_case"

class PersonnageDeMangasPersoMangasTest < ApplicationSystemTestCase
  setup do
    @_personnage_de_mangas_perso_manga = _personnage_de_mangas_perso_mangas(:one)
  end

  test "visiting the index" do
    visit _personnage_de_mangas_perso_mangas_url
    assert_selector "h1", text: "Personnage de mangas perso mangas"
  end

  test "should create personnage de mangas perso manga" do
    visit _personnage_de_mangas_perso_mangas_url
    click_on "New personnage de mangas perso manga"

    fill_in "Name", with: @_personnage_de_mangas_perso_manga.name
    click_on "Create Personnage de mangas perso manga"

    assert_text "Personnage de mangas perso manga was successfully created"
    click_on "Back"
  end

  test "should update Personnage de mangas perso manga" do
    visit _personnage_de_mangas_perso_manga_url(@_personnage_de_mangas_perso_manga)
    click_on "Edit this personnage de mangas perso manga", match: :first

    fill_in "Name", with: @_personnage_de_mangas_perso_manga.name
    click_on "Update Personnage de mangas perso manga"

    assert_text "Personnage de mangas perso manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage de mangas perso manga" do
    visit _personnage_de_mangas_perso_manga_url(@_personnage_de_mangas_perso_manga)
    click_on "Destroy this personnage de mangas perso manga", match: :first

    assert_text "Personnage de mangas perso manga was successfully destroyed"
  end
end
