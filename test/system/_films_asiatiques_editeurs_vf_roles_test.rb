require "application_system_test_case"

class FilmsAsiatiquesEditeursVfRolesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_editeurs_vf_role = _films_asiatiques_editeurs_vf_roles(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_editeurs_vf_roles_url
    assert_selector "h1", text: "Films asiatiques editeurs vf roles"
  end

  test "should create films asiatiques editeurs vf role" do
    visit _films_asiatiques_editeurs_vf_roles_url
    click_on "New films asiatiques editeurs vf role"

    fill_in "Name", with: @_films_asiatiques_editeurs_vf_role.name
    click_on "Create Films asiatiques editeurs vf role"

    assert_text "Films asiatiques editeurs vf role was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques editeurs vf role" do
    visit _films_asiatiques_editeurs_vf_role_url(@_films_asiatiques_editeurs_vf_role)
    click_on "Edit this films asiatiques editeurs vf role", match: :first

    fill_in "Name", with: @_films_asiatiques_editeurs_vf_role.name
    click_on "Update Films asiatiques editeurs vf role"

    assert_text "Films asiatiques editeurs vf role was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques editeurs vf role" do
    visit _films_asiatiques_editeurs_vf_role_url(@_films_asiatiques_editeurs_vf_role)
    click_on "Destroy this films asiatiques editeurs vf role", match: :first

    assert_text "Films asiatiques editeurs vf role was successfully destroyed"
  end
end
