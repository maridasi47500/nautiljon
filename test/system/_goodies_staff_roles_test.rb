require "application_system_test_case"

class GoodiesStaffRolesTest < ApplicationSystemTestCase
  setup do
    @_goodies_staff_role = _goodies_staff_roles(:one)
  end

  test "visiting the index" do
    visit _goodies_staff_roles_url
    assert_selector "h1", text: "Goodies staff roles"
  end

  test "should create goodies staff role" do
    visit _goodies_staff_roles_url
    click_on "New goodies staff role"

    fill_in "Name", with: @_goodies_staff_role.name
    click_on "Create Goodies staff role"

    assert_text "Goodies staff role was successfully created"
    click_on "Back"
  end

  test "should update Goodies staff role" do
    visit _goodies_staff_role_url(@_goodies_staff_role)
    click_on "Edit this goodies staff role", match: :first

    fill_in "Name", with: @_goodies_staff_role.name
    click_on "Update Goodies staff role"

    assert_text "Goodies staff role was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies staff role" do
    visit _goodies_staff_role_url(@_goodies_staff_role)
    click_on "Destroy this goodies staff role", match: :first

    assert_text "Goodies staff role was successfully destroyed"
  end
end
