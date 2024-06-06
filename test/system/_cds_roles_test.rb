require "application_system_test_case"

class CdsRolesTest < ApplicationSystemTestCase
  setup do
    @_cds_role = _cds_roles(:one)
  end

  test "visiting the index" do
    visit _cds_roles_url
    assert_selector "h1", text: "Cds roles"
  end

  test "should create cds role" do
    visit _cds_roles_url
    click_on "New cds role"

    fill_in "Name", with: @_cds_role.name
    click_on "Create Cds role"

    assert_text "Cds role was successfully created"
    click_on "Back"
  end

  test "should update Cds role" do
    visit _cds_role_url(@_cds_role)
    click_on "Edit this cds role", match: :first

    fill_in "Name", with: @_cds_role.name
    click_on "Update Cds role"

    assert_text "Cds role was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds role" do
    visit _cds_role_url(@_cds_role)
    click_on "Destroy this cds role", match: :first

    assert_text "Cds role was successfully destroyed"
  end
end
