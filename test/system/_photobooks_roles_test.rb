require "application_system_test_case"

class PhotobooksRolesTest < ApplicationSystemTestCase
  setup do
    @_photobooks_role = _photobooks_roles(:one)
  end

  test "visiting the index" do
    visit _photobooks_roles_url
    assert_selector "h1", text: "Photobooks roles"
  end

  test "should create photobooks role" do
    visit _photobooks_roles_url
    click_on "New photobooks role"

    fill_in "Name", with: @_photobooks_role.name
    click_on "Create Photobooks role"

    assert_text "Photobooks role was successfully created"
    click_on "Back"
  end

  test "should update Photobooks role" do
    visit _photobooks_role_url(@_photobooks_role)
    click_on "Edit this photobooks role", match: :first

    fill_in "Name", with: @_photobooks_role.name
    click_on "Update Photobooks role"

    assert_text "Photobooks role was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks role" do
    visit _photobooks_role_url(@_photobooks_role)
    click_on "Destroy this photobooks role", match: :first

    assert_text "Photobooks role was successfully destroyed"
  end
end
