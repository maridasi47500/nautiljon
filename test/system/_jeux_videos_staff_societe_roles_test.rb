require "application_system_test_case"

class JeuxVideosStaffSocieteRolesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_staff_societe_role = _jeux_videos_staff_societe_roles(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_staff_societe_roles_url
    assert_selector "h1", text: "Jeux videos staff societe roles"
  end

  test "should create jeux videos staff societe role" do
    visit _jeux_videos_staff_societe_roles_url
    click_on "New jeux videos staff societe role"

    fill_in "Name", with: @_jeux_videos_staff_societe_role.name
    click_on "Create Jeux videos staff societe role"

    assert_text "Jeux videos staff societe role was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos staff societe role" do
    visit _jeux_videos_staff_societe_role_url(@_jeux_videos_staff_societe_role)
    click_on "Edit this jeux videos staff societe role", match: :first

    fill_in "Name", with: @_jeux_videos_staff_societe_role.name
    click_on "Update Jeux videos staff societe role"

    assert_text "Jeux videos staff societe role was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos staff societe role" do
    visit _jeux_videos_staff_societe_role_url(@_jeux_videos_staff_societe_role)
    click_on "Destroy this jeux videos staff societe role", match: :first

    assert_text "Jeux videos staff societe role was successfully destroyed"
  end
end
