require "application_system_test_case"

class MangasSocieteRolesTest < ApplicationSystemTestCase
  setup do
    @_mangas_societe_role = _mangas_societe_roles(:one)
  end

  test "visiting the index" do
    visit _mangas_societe_roles_url
    assert_selector "h1", text: "Mangas societe roles"
  end

  test "should create mangas societe role" do
    visit _mangas_societe_roles_url
    click_on "New mangas societe role"

    fill_in "Name", with: @_mangas_societe_role.name
    click_on "Create Mangas societe role"

    assert_text "Mangas societe role was successfully created"
    click_on "Back"
  end

  test "should update Mangas societe role" do
    visit _mangas_societe_role_url(@_mangas_societe_role)
    click_on "Edit this mangas societe role", match: :first

    fill_in "Name", with: @_mangas_societe_role.name
    click_on "Update Mangas societe role"

    assert_text "Mangas societe role was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas societe role" do
    visit _mangas_societe_role_url(@_mangas_societe_role)
    click_on "Destroy this mangas societe role", match: :first

    assert_text "Mangas societe role was successfully destroyed"
  end
end
