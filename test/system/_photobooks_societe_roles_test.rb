require "application_system_test_case"

class PhotobooksSocieteRolesTest < ApplicationSystemTestCase
  setup do
    @_photobooks_societe_role = _photobooks_societe_roles(:one)
  end

  test "visiting the index" do
    visit _photobooks_societe_roles_url
    assert_selector "h1", text: "Photobooks societe roles"
  end

  test "should create photobooks societe role" do
    visit _photobooks_societe_roles_url
    click_on "New photobooks societe role"

    fill_in "Name", with: @_photobooks_societe_role.name
    click_on "Create Photobooks societe role"

    assert_text "Photobooks societe role was successfully created"
    click_on "Back"
  end

  test "should update Photobooks societe role" do
    visit _photobooks_societe_role_url(@_photobooks_societe_role)
    click_on "Edit this photobooks societe role", match: :first

    fill_in "Name", with: @_photobooks_societe_role.name
    click_on "Update Photobooks societe role"

    assert_text "Photobooks societe role was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks societe role" do
    visit _photobooks_societe_role_url(@_photobooks_societe_role)
    click_on "Destroy this photobooks societe role", match: :first

    assert_text "Photobooks societe role was successfully destroyed"
  end
end
