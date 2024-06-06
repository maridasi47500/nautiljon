require "application_system_test_case"

class PersonnageDeMangasMangasTest < ApplicationSystemTestCase
  setup do
    @_personnage_de_mangas_manga = _personnage_de_mangas_mangas(:one)
  end

  test "visiting the index" do
    visit _personnage_de_mangas_mangas_url
    assert_selector "h1", text: "Personnage de mangas mangas"
  end

  test "should create personnage de mangas manga" do
    visit _personnage_de_mangas_mangas_url
    click_on "New personnage de mangas manga"

    fill_in "Name", with: @_personnage_de_mangas_manga.name
    click_on "Create Personnage de mangas manga"

    assert_text "Personnage de mangas manga was successfully created"
    click_on "Back"
  end

  test "should update Personnage de mangas manga" do
    visit _personnage_de_mangas_manga_url(@_personnage_de_mangas_manga)
    click_on "Edit this personnage de mangas manga", match: :first

    fill_in "Name", with: @_personnage_de_mangas_manga.name
    click_on "Update Personnage de mangas manga"

    assert_text "Personnage de mangas manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage de mangas manga" do
    visit _personnage_de_mangas_manga_url(@_personnage_de_mangas_manga)
    click_on "Destroy this personnage de mangas manga", match: :first

    assert_text "Personnage de mangas manga was successfully destroyed"
  end
end
