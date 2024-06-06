require "application_system_test_case"

class PersonnageDanimesPersoPlusTest < ApplicationSystemTestCase
  setup do
    @_personnage_danimes_perso_plu = _personnage_danimes_perso_plus(:one)
  end

  test "visiting the index" do
    visit _personnage_danimes_perso_plus_url
    assert_selector "h1", text: "Personnage danimes perso plus"
  end

  test "should create personnage danimes perso plu" do
    visit _personnage_danimes_perso_plus_url
    click_on "New personnage danimes perso plu"

    fill_in "Name", with: @_personnage_danimes_perso_plu.name
    click_on "Create Personnage danimes perso plu"

    assert_text "Personnage danimes perso plu was successfully created"
    click_on "Back"
  end

  test "should update Personnage danimes perso plu" do
    visit _personnage_danimes_perso_plu_url(@_personnage_danimes_perso_plu)
    click_on "Edit this personnage danimes perso plu", match: :first

    fill_in "Name", with: @_personnage_danimes_perso_plu.name
    click_on "Update Personnage danimes perso plu"

    assert_text "Personnage danimes perso plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage danimes perso plu" do
    visit _personnage_danimes_perso_plu_url(@_personnage_danimes_perso_plu)
    click_on "Destroy this personnage danimes perso plu", match: :first

    assert_text "Personnage danimes perso plu was successfully destroyed"
  end
end
