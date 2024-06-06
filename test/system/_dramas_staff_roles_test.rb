require "application_system_test_case"

class DramasStaffRolesTest < ApplicationSystemTestCase
  setup do
    @_dramas_staff_role = _dramas_staff_roles(:one)
  end

  test "visiting the index" do
    visit _dramas_staff_roles_url
    assert_selector "h1", text: "Dramas staff roles"
  end

  test "should create dramas staff role" do
    visit _dramas_staff_roles_url
    click_on "New dramas staff role"

    fill_in "Name", with: @_dramas_staff_role.name
    click_on "Create Dramas staff role"

    assert_text "Dramas staff role was successfully created"
    click_on "Back"
  end

  test "should update Dramas staff role" do
    visit _dramas_staff_role_url(@_dramas_staff_role)
    click_on "Edit this dramas staff role", match: :first

    fill_in "Name", with: @_dramas_staff_role.name
    click_on "Update Dramas staff role"

    assert_text "Dramas staff role was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas staff role" do
    visit _dramas_staff_role_url(@_dramas_staff_role)
    click_on "Destroy this dramas staff role", match: :first

    assert_text "Dramas staff role was successfully destroyed"
  end
end
