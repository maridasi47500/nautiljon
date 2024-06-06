require "application_system_test_case"

class GeneriquesStaffRolesTest < ApplicationSystemTestCase
  setup do
    @_generiques_staff_role = _generiques_staff_roles(:one)
  end

  test "visiting the index" do
    visit _generiques_staff_roles_url
    assert_selector "h1", text: "Generiques staff roles"
  end

  test "should create generiques staff role" do
    visit _generiques_staff_roles_url
    click_on "New generiques staff role"

    fill_in "Name", with: @_generiques_staff_role.name
    click_on "Create Generiques staff role"

    assert_text "Generiques staff role was successfully created"
    click_on "Back"
  end

  test "should update Generiques staff role" do
    visit _generiques_staff_role_url(@_generiques_staff_role)
    click_on "Edit this generiques staff role", match: :first

    fill_in "Name", with: @_generiques_staff_role.name
    click_on "Update Generiques staff role"

    assert_text "Generiques staff role was successfully updated"
    click_on "Back"
  end

  test "should destroy Generiques staff role" do
    visit _generiques_staff_role_url(@_generiques_staff_role)
    click_on "Destroy this generiques staff role", match: :first

    assert_text "Generiques staff role was successfully destroyed"
  end
end
