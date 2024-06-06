require "application_system_test_case"

class ArtbooksSocieteRolesTest < ApplicationSystemTestCase
  setup do
    @artbooks_societe_role = artbooks_societe_roles(:one)
  end

  test "visiting the index" do
    visit artbooks_societe_roles_url
    assert_selector "h1", text: "Artbooks societe roles"
  end

  test "should create artbooks societe role" do
    visit artbooks_societe_roles_url
    click_on "New artbooks societe role"

    fill_in "Name", with: @artbooks_societe_role.name
    click_on "Create Artbooks societe role"

    assert_text "Artbooks societe role was successfully created"
    click_on "Back"
  end

  test "should update Artbooks societe role" do
    visit artbooks_societe_role_url(@artbooks_societe_role)
    click_on "Edit this artbooks societe role", match: :first

    fill_in "Name", with: @artbooks_societe_role.name
    click_on "Update Artbooks societe role"

    assert_text "Artbooks societe role was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks societe role" do
    visit artbooks_societe_role_url(@artbooks_societe_role)
    click_on "Destroy this artbooks societe role", match: :first

    assert_text "Artbooks societe role was successfully destroyed"
  end
end
