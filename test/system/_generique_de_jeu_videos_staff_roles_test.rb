require "application_system_test_case"

class GeneriqueDeJeuVideosStaffRolesTest < ApplicationSystemTestCase
  setup do
    @_generique_de_jeu_videos_staff_role = _generique_de_jeu_videos_staff_roles(:one)
  end

  test "visiting the index" do
    visit _generique_de_jeu_videos_staff_roles_url
    assert_selector "h1", text: "Generique de jeu videos staff roles"
  end

  test "should create generique de jeu videos staff role" do
    visit _generique_de_jeu_videos_staff_roles_url
    click_on "New generique de jeu videos staff role"

    fill_in "Name", with: @_generique_de_jeu_videos_staff_role.name
    click_on "Create Generique de jeu videos staff role"

    assert_text "Generique de jeu videos staff role was successfully created"
    click_on "Back"
  end

  test "should update Generique de jeu videos staff role" do
    visit _generique_de_jeu_videos_staff_role_url(@_generique_de_jeu_videos_staff_role)
    click_on "Edit this generique de jeu videos staff role", match: :first

    fill_in "Name", with: @_generique_de_jeu_videos_staff_role.name
    click_on "Update Generique de jeu videos staff role"

    assert_text "Generique de jeu videos staff role was successfully updated"
    click_on "Back"
  end

  test "should destroy Generique de jeu videos staff role" do
    visit _generique_de_jeu_videos_staff_role_url(@_generique_de_jeu_videos_staff_role)
    click_on "Destroy this generique de jeu videos staff role", match: :first

    assert_text "Generique de jeu videos staff role was successfully destroyed"
  end
end
