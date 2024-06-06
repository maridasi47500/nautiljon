require "application_system_test_case"

class PersonnageDanimesJvPersosTest < ApplicationSystemTestCase
  setup do
    @_personnage_danimes_jv_perso = _personnage_danimes_jv_persos(:one)
  end

  test "visiting the index" do
    visit _personnage_danimes_jv_persos_url
    assert_selector "h1", text: "Personnage danimes jv persos"
  end

  test "should create personnage danimes jv perso" do
    visit _personnage_danimes_jv_persos_url
    click_on "New personnage danimes jv perso"

    fill_in "Name", with: @_personnage_danimes_jv_perso.name
    click_on "Create Personnage danimes jv perso"

    assert_text "Personnage danimes jv perso was successfully created"
    click_on "Back"
  end

  test "should update Personnage danimes jv perso" do
    visit _personnage_danimes_jv_perso_url(@_personnage_danimes_jv_perso)
    click_on "Edit this personnage danimes jv perso", match: :first

    fill_in "Name", with: @_personnage_danimes_jv_perso.name
    click_on "Update Personnage danimes jv perso"

    assert_text "Personnage danimes jv perso was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage danimes jv perso" do
    visit _personnage_danimes_jv_perso_url(@_personnage_danimes_jv_perso)
    click_on "Destroy this personnage danimes jv perso", match: :first

    assert_text "Personnage danimes jv perso was successfully destroyed"
  end
end
