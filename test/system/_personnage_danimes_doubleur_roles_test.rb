require "application_system_test_case"

class PersonnageDanimesDoubleurRolesTest < ApplicationSystemTestCase
  setup do
    @_personnage_danimes_doubleur_role = _personnage_danimes_doubleur_roles(:one)
  end

  test "visiting the index" do
    visit _personnage_danimes_doubleur_roles_url
    assert_selector "h1", text: "Personnage danimes doubleur roles"
  end

  test "should create personnage danimes doubleur role" do
    visit _personnage_danimes_doubleur_roles_url
    click_on "New personnage danimes doubleur role"

    fill_in "Name", with: @_personnage_danimes_doubleur_role.name
    click_on "Create Personnage danimes doubleur role"

    assert_text "Personnage danimes doubleur role was successfully created"
    click_on "Back"
  end

  test "should update Personnage danimes doubleur role" do
    visit _personnage_danimes_doubleur_role_url(@_personnage_danimes_doubleur_role)
    click_on "Edit this personnage danimes doubleur role", match: :first

    fill_in "Name", with: @_personnage_danimes_doubleur_role.name
    click_on "Update Personnage danimes doubleur role"

    assert_text "Personnage danimes doubleur role was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage danimes doubleur role" do
    visit _personnage_danimes_doubleur_role_url(@_personnage_danimes_doubleur_role)
    click_on "Destroy this personnage danimes doubleur role", match: :first

    assert_text "Personnage danimes doubleur role was successfully destroyed"
  end
end
