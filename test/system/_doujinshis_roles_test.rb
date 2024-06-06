require "application_system_test_case"

class DoujinshisRolesTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_role = _doujinshis_roles(:one)
  end

  test "visiting the index" do
    visit _doujinshis_roles_url
    assert_selector "h1", text: "Doujinshis roles"
  end

  test "should create doujinshis role" do
    visit _doujinshis_roles_url
    click_on "New doujinshis role"

    fill_in "Name", with: @_doujinshis_role.name
    click_on "Create Doujinshis role"

    assert_text "Doujinshis role was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis role" do
    visit _doujinshis_role_url(@_doujinshis_role)
    click_on "Edit this doujinshis role", match: :first

    fill_in "Name", with: @_doujinshis_role.name
    click_on "Update Doujinshis role"

    assert_text "Doujinshis role was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis role" do
    visit _doujinshis_role_url(@_doujinshis_role)
    click_on "Destroy this doujinshis role", match: :first

    assert_text "Doujinshis role was successfully destroyed"
  end
end
