require "application_system_test_case"

class GoodiesSocieteRolesTest < ApplicationSystemTestCase
  setup do
    @_goodies_societe_role = _goodies_societe_roles(:one)
  end

  test "visiting the index" do
    visit _goodies_societe_roles_url
    assert_selector "h1", text: "Goodies societe roles"
  end

  test "should create goodies societe role" do
    visit _goodies_societe_roles_url
    click_on "New goodies societe role"

    fill_in "Name", with: @_goodies_societe_role.name
    click_on "Create Goodies societe role"

    assert_text "Goodies societe role was successfully created"
    click_on "Back"
  end

  test "should update Goodies societe role" do
    visit _goodies_societe_role_url(@_goodies_societe_role)
    click_on "Edit this goodies societe role", match: :first

    fill_in "Name", with: @_goodies_societe_role.name
    click_on "Update Goodies societe role"

    assert_text "Goodies societe role was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies societe role" do
    visit _goodies_societe_role_url(@_goodies_societe_role)
    click_on "Destroy this goodies societe role", match: :first

    assert_text "Goodies societe role was successfully destroyed"
  end
end
