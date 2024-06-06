require "application_system_test_case"

class AnimesEditeursVfRolesTest < ApplicationSystemTestCase
  setup do
    @animes_editeurs_vf_role = animes_editeurs_vf_roles(:one)
  end

  test "visiting the index" do
    visit animes_editeurs_vf_roles_url
    assert_selector "h1", text: "Animes editeurs vf roles"
  end

  test "should create animes editeurs vf role" do
    visit animes_editeurs_vf_roles_url
    click_on "New animes editeurs vf role"

    fill_in "Name", with: @animes_editeurs_vf_role.name
    click_on "Create Animes editeurs vf role"

    assert_text "Animes editeurs vf role was successfully created"
    click_on "Back"
  end

  test "should update Animes editeurs vf role" do
    visit animes_editeurs_vf_role_url(@animes_editeurs_vf_role)
    click_on "Edit this animes editeurs vf role", match: :first

    fill_in "Name", with: @animes_editeurs_vf_role.name
    click_on "Update Animes editeurs vf role"

    assert_text "Animes editeurs vf role was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes editeurs vf role" do
    visit animes_editeurs_vf_role_url(@animes_editeurs_vf_role)
    click_on "Destroy this animes editeurs vf role", match: :first

    assert_text "Animes editeurs vf role was successfully destroyed"
  end
end
