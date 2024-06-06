require "application_system_test_case"

class PersonnageDeMangasPersosTest < ApplicationSystemTestCase
  setup do
    @_personnage_de_mangas_perso = _personnage_de_mangas_persos(:one)
  end

  test "visiting the index" do
    visit _personnage_de_mangas_persos_url
    assert_selector "h1", text: "Personnage de mangas persos"
  end

  test "should create personnage de mangas perso" do
    visit _personnage_de_mangas_persos_url
    click_on "New personnage de mangas perso"

    fill_in "Name", with: @_personnage_de_mangas_perso.name
    click_on "Create Personnage de mangas perso"

    assert_text "Personnage de mangas perso was successfully created"
    click_on "Back"
  end

  test "should update Personnage de mangas perso" do
    visit _personnage_de_mangas_perso_url(@_personnage_de_mangas_perso)
    click_on "Edit this personnage de mangas perso", match: :first

    fill_in "Name", with: @_personnage_de_mangas_perso.name
    click_on "Update Personnage de mangas perso"

    assert_text "Personnage de mangas perso was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage de mangas perso" do
    visit _personnage_de_mangas_perso_url(@_personnage_de_mangas_perso)
    click_on "Destroy this personnage de mangas perso", match: :first

    assert_text "Personnage de mangas perso was successfully destroyed"
  end
end
