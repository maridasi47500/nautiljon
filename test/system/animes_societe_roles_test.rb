require "application_system_test_case"

class AnimesSocieteRolesTest < ApplicationSystemTestCase
  setup do
    @animes_societe_role = animes_societe_roles(:one)
  end

  test "visiting the index" do
    visit animes_societe_roles_url
    assert_selector "h1", text: "Animes societe roles"
  end

  test "should create animes societe role" do
    visit animes_societe_roles_url
    click_on "New animes societe role"

    fill_in "Name", with: @animes_societe_role.name
    click_on "Create Animes societe role"

    assert_text "Animes societe role was successfully created"
    click_on "Back"
  end

  test "should update Animes societe role" do
    visit animes_societe_role_url(@animes_societe_role)
    click_on "Edit this animes societe role", match: :first

    fill_in "Name", with: @animes_societe_role.name
    click_on "Update Animes societe role"

    assert_text "Animes societe role was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes societe role" do
    visit animes_societe_role_url(@animes_societe_role)
    click_on "Destroy this animes societe role", match: :first

    assert_text "Animes societe role was successfully destroyed"
  end
end
