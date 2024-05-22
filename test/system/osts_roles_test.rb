require "application_system_test_case"

class OstsRolesTest < ApplicationSystemTestCase
  setup do
    @osts_role = osts_roles(:one)
  end

  test "visiting the index" do
    visit osts_roles_url
    assert_selector "h1", text: "Osts roles"
  end

  test "should create osts role" do
    visit osts_roles_url
    click_on "New osts role"

    fill_in "Name", with: @osts_role.name
    click_on "Create Osts role"

    assert_text "Osts role was successfully created"
    click_on "Back"
  end

  test "should update Osts role" do
    visit osts_role_url(@osts_role)
    click_on "Edit this osts role", match: :first

    fill_in "Name", with: @osts_role.name
    click_on "Update Osts role"

    assert_text "Osts role was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts role" do
    visit osts_role_url(@osts_role)
    click_on "Destroy this osts role", match: :first

    assert_text "Osts role was successfully destroyed"
  end
end
