require "application_system_test_case"

class PersonnageDeMangasPersoPlusTest < ApplicationSystemTestCase
  setup do
    @_personnage_de_mangas_perso_plu = _personnage_de_mangas_perso_plus(:one)
  end

  test "visiting the index" do
    visit _personnage_de_mangas_perso_plus_url
    assert_selector "h1", text: "Personnage de mangas perso plus"
  end

  test "should create personnage de mangas perso plu" do
    visit _personnage_de_mangas_perso_plus_url
    click_on "New personnage de mangas perso plu"

    fill_in "Name", with: @_personnage_de_mangas_perso_plu.name
    click_on "Create Personnage de mangas perso plu"

    assert_text "Personnage de mangas perso plu was successfully created"
    click_on "Back"
  end

  test "should update Personnage de mangas perso plu" do
    visit _personnage_de_mangas_perso_plu_url(@_personnage_de_mangas_perso_plu)
    click_on "Edit this personnage de mangas perso plu", match: :first

    fill_in "Name", with: @_personnage_de_mangas_perso_plu.name
    click_on "Update Personnage de mangas perso plu"

    assert_text "Personnage de mangas perso plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage de mangas perso plu" do
    visit _personnage_de_mangas_perso_plu_url(@_personnage_de_mangas_perso_plu)
    click_on "Destroy this personnage de mangas perso plu", match: :first

    assert_text "Personnage de mangas perso plu was successfully destroyed"
  end
end
