require "application_system_test_case"

class DramasSocieteRolesTest < ApplicationSystemTestCase
  setup do
    @_dramas_societe_role = _dramas_societe_roles(:one)
  end

  test "visiting the index" do
    visit _dramas_societe_roles_url
    assert_selector "h1", text: "Dramas societe roles"
  end

  test "should create dramas societe role" do
    visit _dramas_societe_roles_url
    click_on "New dramas societe role"

    fill_in "Name", with: @_dramas_societe_role.name
    click_on "Create Dramas societe role"

    assert_text "Dramas societe role was successfully created"
    click_on "Back"
  end

  test "should update Dramas societe role" do
    visit _dramas_societe_role_url(@_dramas_societe_role)
    click_on "Edit this dramas societe role", match: :first

    fill_in "Name", with: @_dramas_societe_role.name
    click_on "Update Dramas societe role"

    assert_text "Dramas societe role was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas societe role" do
    visit _dramas_societe_role_url(@_dramas_societe_role)
    click_on "Destroy this dramas societe role", match: :first

    assert_text "Dramas societe role was successfully destroyed"
  end
end
