require "application_system_test_case"

class ParolesStaffRolesTest < ApplicationSystemTestCase
  setup do
    @_paroles_staff_role = _paroles_staff_roles(:one)
  end

  test "visiting the index" do
    visit _paroles_staff_roles_url
    assert_selector "h1", text: "Paroles staff roles"
  end

  test "should create paroles staff role" do
    visit _paroles_staff_roles_url
    click_on "New paroles staff role"

    fill_in "Name", with: @_paroles_staff_role.name
    click_on "Create Paroles staff role"

    assert_text "Paroles staff role was successfully created"
    click_on "Back"
  end

  test "should update Paroles staff role" do
    visit _paroles_staff_role_url(@_paroles_staff_role)
    click_on "Edit this paroles staff role", match: :first

    fill_in "Name", with: @_paroles_staff_role.name
    click_on "Update Paroles staff role"

    assert_text "Paroles staff role was successfully updated"
    click_on "Back"
  end

  test "should destroy Paroles staff role" do
    visit _paroles_staff_role_url(@_paroles_staff_role)
    click_on "Destroy this paroles staff role", match: :first

    assert_text "Paroles staff role was successfully destroyed"
  end
end
