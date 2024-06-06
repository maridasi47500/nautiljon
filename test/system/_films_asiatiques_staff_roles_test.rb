require "application_system_test_case"

class FilmsAsiatiquesStaffRolesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_staff_role = _films_asiatiques_staff_roles(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_staff_roles_url
    assert_selector "h1", text: "Films asiatiques staff roles"
  end

  test "should create films asiatiques staff role" do
    visit _films_asiatiques_staff_roles_url
    click_on "New films asiatiques staff role"

    fill_in "Name", with: @_films_asiatiques_staff_role.name
    click_on "Create Films asiatiques staff role"

    assert_text "Films asiatiques staff role was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques staff role" do
    visit _films_asiatiques_staff_role_url(@_films_asiatiques_staff_role)
    click_on "Edit this films asiatiques staff role", match: :first

    fill_in "Name", with: @_films_asiatiques_staff_role.name
    click_on "Update Films asiatiques staff role"

    assert_text "Films asiatiques staff role was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques staff role" do
    visit _films_asiatiques_staff_role_url(@_films_asiatiques_staff_role)
    click_on "Destroy this films asiatiques staff role", match: :first

    assert_text "Films asiatiques staff role was successfully destroyed"
  end
end
