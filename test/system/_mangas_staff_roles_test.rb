require "application_system_test_case"

class MangasStaffRolesTest < ApplicationSystemTestCase
  setup do
    @_mangas_staff_role = _mangas_staff_roles(:one)
  end

  test "visiting the index" do
    visit _mangas_staff_roles_url
    assert_selector "h1", text: "Mangas staff roles"
  end

  test "should create mangas staff role" do
    visit _mangas_staff_roles_url
    click_on "New mangas staff role"

    fill_in "Name", with: @_mangas_staff_role.name
    click_on "Create Mangas staff role"

    assert_text "Mangas staff role was successfully created"
    click_on "Back"
  end

  test "should update Mangas staff role" do
    visit _mangas_staff_role_url(@_mangas_staff_role)
    click_on "Edit this mangas staff role", match: :first

    fill_in "Name", with: @_mangas_staff_role.name
    click_on "Update Mangas staff role"

    assert_text "Mangas staff role was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas staff role" do
    visit _mangas_staff_role_url(@_mangas_staff_role)
    click_on "Destroy this mangas staff role", match: :first

    assert_text "Mangas staff role was successfully destroyed"
  end
end
