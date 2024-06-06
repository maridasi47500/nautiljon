require "application_system_test_case"

class LightNovelsStaffRolesTest < ApplicationSystemTestCase
  setup do
    @_light_novels_staff_role = _light_novels_staff_roles(:one)
  end

  test "visiting the index" do
    visit _light_novels_staff_roles_url
    assert_selector "h1", text: "Light novels staff roles"
  end

  test "should create light novels staff role" do
    visit _light_novels_staff_roles_url
    click_on "New light novels staff role"

    fill_in "Name", with: @_light_novels_staff_role.name
    click_on "Create Light novels staff role"

    assert_text "Light novels staff role was successfully created"
    click_on "Back"
  end

  test "should update Light novels staff role" do
    visit _light_novels_staff_role_url(@_light_novels_staff_role)
    click_on "Edit this light novels staff role", match: :first

    fill_in "Name", with: @_light_novels_staff_role.name
    click_on "Update Light novels staff role"

    assert_text "Light novels staff role was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels staff role" do
    visit _light_novels_staff_role_url(@_light_novels_staff_role)
    click_on "Destroy this light novels staff role", match: :first

    assert_text "Light novels staff role was successfully destroyed"
  end
end
