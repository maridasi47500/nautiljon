require "application_system_test_case"

class FilmsAsiatiquesSocieteRolesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_societe_role = _films_asiatiques_societe_roles(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_societe_roles_url
    assert_selector "h1", text: "Films asiatiques societe roles"
  end

  test "should create films asiatiques societe role" do
    visit _films_asiatiques_societe_roles_url
    click_on "New films asiatiques societe role"

    fill_in "Name", with: @_films_asiatiques_societe_role.name
    click_on "Create Films asiatiques societe role"

    assert_text "Films asiatiques societe role was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques societe role" do
    visit _films_asiatiques_societe_role_url(@_films_asiatiques_societe_role)
    click_on "Edit this films asiatiques societe role", match: :first

    fill_in "Name", with: @_films_asiatiques_societe_role.name
    click_on "Update Films asiatiques societe role"

    assert_text "Films asiatiques societe role was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques societe role" do
    visit _films_asiatiques_societe_role_url(@_films_asiatiques_societe_role)
    click_on "Destroy this films asiatiques societe role", match: :first

    assert_text "Films asiatiques societe role was successfully destroyed"
  end
end
