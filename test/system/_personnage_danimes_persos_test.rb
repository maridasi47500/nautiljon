require "application_system_test_case"

class PersonnageDanimesPersosTest < ApplicationSystemTestCase
  setup do
    @_personnage_danimes_perso = _personnage_danimes_persos(:one)
  end

  test "visiting the index" do
    visit _personnage_danimes_persos_url
    assert_selector "h1", text: "Personnage danimes persos"
  end

  test "should create personnage danimes perso" do
    visit _personnage_danimes_persos_url
    click_on "New personnage danimes perso"

    fill_in "Name", with: @_personnage_danimes_perso.name
    click_on "Create Personnage danimes perso"

    assert_text "Personnage danimes perso was successfully created"
    click_on "Back"
  end

  test "should update Personnage danimes perso" do
    visit _personnage_danimes_perso_url(@_personnage_danimes_perso)
    click_on "Edit this personnage danimes perso", match: :first

    fill_in "Name", with: @_personnage_danimes_perso.name
    click_on "Update Personnage danimes perso"

    assert_text "Personnage danimes perso was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage danimes perso" do
    visit _personnage_danimes_perso_url(@_personnage_danimes_perso)
    click_on "Destroy this personnage danimes perso", match: :first

    assert_text "Personnage danimes perso was successfully destroyed"
  end
end
