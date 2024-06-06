require "application_system_test_case"

class PersonnageDanimesPersoMangasTest < ApplicationSystemTestCase
  setup do
    @_personnage_danimes_perso_manga = _personnage_danimes_perso_mangas(:one)
  end

  test "visiting the index" do
    visit _personnage_danimes_perso_mangas_url
    assert_selector "h1", text: "Personnage danimes perso mangas"
  end

  test "should create personnage danimes perso manga" do
    visit _personnage_danimes_perso_mangas_url
    click_on "New personnage danimes perso manga"

    fill_in "Name", with: @_personnage_danimes_perso_manga.name
    click_on "Create Personnage danimes perso manga"

    assert_text "Personnage danimes perso manga was successfully created"
    click_on "Back"
  end

  test "should update Personnage danimes perso manga" do
    visit _personnage_danimes_perso_manga_url(@_personnage_danimes_perso_manga)
    click_on "Edit this personnage danimes perso manga", match: :first

    fill_in "Name", with: @_personnage_danimes_perso_manga.name
    click_on "Update Personnage danimes perso manga"

    assert_text "Personnage danimes perso manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage danimes perso manga" do
    visit _personnage_danimes_perso_manga_url(@_personnage_danimes_perso_manga)
    click_on "Destroy this personnage danimes perso manga", match: :first

    assert_text "Personnage danimes perso manga was successfully destroyed"
  end
end
