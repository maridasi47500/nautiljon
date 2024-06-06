require "application_system_test_case"

class PersonnageDeMangasJvPersosTest < ApplicationSystemTestCase
  setup do
    @_personnage_de_mangas_jv_perso = _personnage_de_mangas_jv_persos(:one)
  end

  test "visiting the index" do
    visit _personnage_de_mangas_jv_persos_url
    assert_selector "h1", text: "Personnage de mangas jv persos"
  end

  test "should create personnage de mangas jv perso" do
    visit _personnage_de_mangas_jv_persos_url
    click_on "New personnage de mangas jv perso"

    fill_in "Name", with: @_personnage_de_mangas_jv_perso.name
    click_on "Create Personnage de mangas jv perso"

    assert_text "Personnage de mangas jv perso was successfully created"
    click_on "Back"
  end

  test "should update Personnage de mangas jv perso" do
    visit _personnage_de_mangas_jv_perso_url(@_personnage_de_mangas_jv_perso)
    click_on "Edit this personnage de mangas jv perso", match: :first

    fill_in "Name", with: @_personnage_de_mangas_jv_perso.name
    click_on "Update Personnage de mangas jv perso"

    assert_text "Personnage de mangas jv perso was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage de mangas jv perso" do
    visit _personnage_de_mangas_jv_perso_url(@_personnage_de_mangas_jv_perso)
    click_on "Destroy this personnage de mangas jv perso", match: :first

    assert_text "Personnage de mangas jv perso was successfully destroyed"
  end
end
