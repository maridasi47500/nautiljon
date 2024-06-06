require "application_system_test_case"

class PersonnageDeMangasGoodiesTest < ApplicationSystemTestCase
  setup do
    @_personnage_de_mangas_goody = _personnage_de_mangas_goodies(:one)
  end

  test "visiting the index" do
    visit _personnage_de_mangas_goodies_url
    assert_selector "h1", text: "Personnage de mangas goodies"
  end

  test "should create personnage de mangas goody" do
    visit _personnage_de_mangas_goodies_url
    click_on "New personnage de mangas goody"

    fill_in "Name", with: @_personnage_de_mangas_goody.name
    click_on "Create Personnage de mangas goody"

    assert_text "Personnage de mangas goody was successfully created"
    click_on "Back"
  end

  test "should update Personnage de mangas goody" do
    visit _personnage_de_mangas_goody_url(@_personnage_de_mangas_goody)
    click_on "Edit this personnage de mangas goody", match: :first

    fill_in "Name", with: @_personnage_de_mangas_goody.name
    click_on "Update Personnage de mangas goody"

    assert_text "Personnage de mangas goody was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage de mangas goody" do
    visit _personnage_de_mangas_goody_url(@_personnage_de_mangas_goody)
    click_on "Destroy this personnage de mangas goody", match: :first

    assert_text "Personnage de mangas goody was successfully destroyed"
  end
end
