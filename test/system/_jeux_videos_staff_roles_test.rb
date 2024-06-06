require "application_system_test_case"

class JeuxVideosStaffRolesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_staff_role = _jeux_videos_staff_roles(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_staff_roles_url
    assert_selector "h1", text: "Jeux videos staff roles"
  end

  test "should create jeux videos staff role" do
    visit _jeux_videos_staff_roles_url
    click_on "New jeux videos staff role"

    fill_in "Name", with: @_jeux_videos_staff_role.name
    click_on "Create Jeux videos staff role"

    assert_text "Jeux videos staff role was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos staff role" do
    visit _jeux_videos_staff_role_url(@_jeux_videos_staff_role)
    click_on "Edit this jeux videos staff role", match: :first

    fill_in "Name", with: @_jeux_videos_staff_role.name
    click_on "Update Jeux videos staff role"

    assert_text "Jeux videos staff role was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos staff role" do
    visit _jeux_videos_staff_role_url(@_jeux_videos_staff_role)
    click_on "Destroy this jeux videos staff role", match: :first

    assert_text "Jeux videos staff role was successfully destroyed"
  end
end
