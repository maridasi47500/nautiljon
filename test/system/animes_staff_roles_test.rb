require "application_system_test_case"

class AnimesStaffRolesTest < ApplicationSystemTestCase
  setup do
    @animes_staff_role = animes_staff_roles(:one)
  end

  test "visiting the index" do
    visit animes_staff_roles_url
    assert_selector "h1", text: "Animes staff roles"
  end

  test "should create animes staff role" do
    visit animes_staff_roles_url
    click_on "New animes staff role"

    fill_in "Name", with: @animes_staff_role.name
    click_on "Create Animes staff role"

    assert_text "Animes staff role was successfully created"
    click_on "Back"
  end

  test "should update Animes staff role" do
    visit animes_staff_role_url(@animes_staff_role)
    click_on "Edit this animes staff role", match: :first

    fill_in "Name", with: @animes_staff_role.name
    click_on "Update Animes staff role"

    assert_text "Animes staff role was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes staff role" do
    visit animes_staff_role_url(@animes_staff_role)
    click_on "Destroy this animes staff role", match: :first

    assert_text "Animes staff role was successfully destroyed"
  end
end
