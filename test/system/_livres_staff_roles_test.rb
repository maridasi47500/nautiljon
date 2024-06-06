require "application_system_test_case"

class LivresStaffRolesTest < ApplicationSystemTestCase
  setup do
    @_livres_staff_role = _livres_staff_roles(:one)
  end

  test "visiting the index" do
    visit _livres_staff_roles_url
    assert_selector "h1", text: "Livres staff roles"
  end

  test "should create livres staff role" do
    visit _livres_staff_roles_url
    click_on "New livres staff role"

    fill_in "Name", with: @_livres_staff_role.name
    click_on "Create Livres staff role"

    assert_text "Livres staff role was successfully created"
    click_on "Back"
  end

  test "should update Livres staff role" do
    visit _livres_staff_role_url(@_livres_staff_role)
    click_on "Edit this livres staff role", match: :first

    fill_in "Name", with: @_livres_staff_role.name
    click_on "Update Livres staff role"

    assert_text "Livres staff role was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres staff role" do
    visit _livres_staff_role_url(@_livres_staff_role)
    click_on "Destroy this livres staff role", match: :first

    assert_text "Livres staff role was successfully destroyed"
  end
end
