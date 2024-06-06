require "application_system_test_case"

class PersonnalitesRolesTest < ApplicationSystemTestCase
  setup do
    @_personnalites_role = _personnalites_roles(:one)
  end

  test "visiting the index" do
    visit _personnalites_roles_url
    assert_selector "h1", text: "Personnalites roles"
  end

  test "should create personnalites role" do
    visit _personnalites_roles_url
    click_on "New personnalites role"

    fill_in "Name", with: @_personnalites_role.name
    click_on "Create Personnalites role"

    assert_text "Personnalites role was successfully created"
    click_on "Back"
  end

  test "should update Personnalites role" do
    visit _personnalites_role_url(@_personnalites_role)
    click_on "Edit this personnalites role", match: :first

    fill_in "Name", with: @_personnalites_role.name
    click_on "Update Personnalites role"

    assert_text "Personnalites role was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites role" do
    visit _personnalites_role_url(@_personnalites_role)
    click_on "Destroy this personnalites role", match: :first

    assert_text "Personnalites role was successfully destroyed"
  end
end
