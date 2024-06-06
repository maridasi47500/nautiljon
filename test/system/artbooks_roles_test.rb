require "application_system_test_case"

class ArtbooksRolesTest < ApplicationSystemTestCase
  setup do
    @artbooks_role = artbooks_roles(:one)
  end

  test "visiting the index" do
    visit artbooks_roles_url
    assert_selector "h1", text: "Artbooks roles"
  end

  test "should create artbooks role" do
    visit artbooks_roles_url
    click_on "New artbooks role"

    fill_in "Name", with: @artbooks_role.name
    click_on "Create Artbooks role"

    assert_text "Artbooks role was successfully created"
    click_on "Back"
  end

  test "should update Artbooks role" do
    visit artbooks_role_url(@artbooks_role)
    click_on "Edit this artbooks role", match: :first

    fill_in "Name", with: @artbooks_role.name
    click_on "Update Artbooks role"

    assert_text "Artbooks role was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks role" do
    visit artbooks_role_url(@artbooks_role)
    click_on "Destroy this artbooks role", match: :first

    assert_text "Artbooks role was successfully destroyed"
  end
end
