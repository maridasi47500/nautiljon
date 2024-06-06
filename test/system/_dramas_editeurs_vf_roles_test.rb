require "application_system_test_case"

class DramasEditeursVfRolesTest < ApplicationSystemTestCase
  setup do
    @_dramas_editeurs_vf_role = _dramas_editeurs_vf_roles(:one)
  end

  test "visiting the index" do
    visit _dramas_editeurs_vf_roles_url
    assert_selector "h1", text: "Dramas editeurs vf roles"
  end

  test "should create dramas editeurs vf role" do
    visit _dramas_editeurs_vf_roles_url
    click_on "New dramas editeurs vf role"

    fill_in "Name", with: @_dramas_editeurs_vf_role.name
    click_on "Create Dramas editeurs vf role"

    assert_text "Dramas editeurs vf role was successfully created"
    click_on "Back"
  end

  test "should update Dramas editeurs vf role" do
    visit _dramas_editeurs_vf_role_url(@_dramas_editeurs_vf_role)
    click_on "Edit this dramas editeurs vf role", match: :first

    fill_in "Name", with: @_dramas_editeurs_vf_role.name
    click_on "Update Dramas editeurs vf role"

    assert_text "Dramas editeurs vf role was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas editeurs vf role" do
    visit _dramas_editeurs_vf_role_url(@_dramas_editeurs_vf_role)
    click_on "Destroy this dramas editeurs vf role", match: :first

    assert_text "Dramas editeurs vf role was successfully destroyed"
  end
end
