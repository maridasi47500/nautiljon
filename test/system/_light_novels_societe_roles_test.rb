require "application_system_test_case"

class LightNovelsSocieteRolesTest < ApplicationSystemTestCase
  setup do
    @_light_novels_societe_role = _light_novels_societe_roles(:one)
  end

  test "visiting the index" do
    visit _light_novels_societe_roles_url
    assert_selector "h1", text: "Light novels societe roles"
  end

  test "should create light novels societe role" do
    visit _light_novels_societe_roles_url
    click_on "New light novels societe role"

    fill_in "Name", with: @_light_novels_societe_role.name
    click_on "Create Light novels societe role"

    assert_text "Light novels societe role was successfully created"
    click_on "Back"
  end

  test "should update Light novels societe role" do
    visit _light_novels_societe_role_url(@_light_novels_societe_role)
    click_on "Edit this light novels societe role", match: :first

    fill_in "Name", with: @_light_novels_societe_role.name
    click_on "Update Light novels societe role"

    assert_text "Light novels societe role was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels societe role" do
    visit _light_novels_societe_role_url(@_light_novels_societe_role)
    click_on "Destroy this light novels societe role", match: :first

    assert_text "Light novels societe role was successfully destroyed"
  end
end
