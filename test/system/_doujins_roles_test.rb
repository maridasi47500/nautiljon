require "application_system_test_case"

class DoujinsRolesTest < ApplicationSystemTestCase
  setup do
    @_doujins_role = _doujins_roles(:one)
  end

  test "visiting the index" do
    visit _doujins_roles_url
    assert_selector "h1", text: "Doujins roles"
  end

  test "should create doujins role" do
    visit _doujins_roles_url
    click_on "New doujins role"

    fill_in "Name", with: @_doujins_role.name
    click_on "Create Doujins role"

    assert_text "Doujins role was successfully created"
    click_on "Back"
  end

  test "should update Doujins role" do
    visit _doujins_role_url(@_doujins_role)
    click_on "Edit this doujins role", match: :first

    fill_in "Name", with: @_doujins_role.name
    click_on "Update Doujins role"

    assert_text "Doujins role was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins role" do
    visit _doujins_role_url(@_doujins_role)
    click_on "Destroy this doujins role", match: :first

    assert_text "Doujins role was successfully destroyed"
  end
end
