require "application_system_test_case"

class GeneriqueDeJeuVideosTypesTest < ApplicationSystemTestCase
  setup do
    @_generique_de_jeu_videos_type = _generique_de_jeu_videos_types(:one)
  end

  test "visiting the index" do
    visit _generique_de_jeu_videos_types_url
    assert_selector "h1", text: "Generique de jeu videos types"
  end

  test "should create generique de jeu videos type" do
    visit _generique_de_jeu_videos_types_url
    click_on "New generique de jeu videos type"

    fill_in "Name", with: @_generique_de_jeu_videos_type.name
    click_on "Create Generique de jeu videos type"

    assert_text "Generique de jeu videos type was successfully created"
    click_on "Back"
  end

  test "should update Generique de jeu videos type" do
    visit _generique_de_jeu_videos_type_url(@_generique_de_jeu_videos_type)
    click_on "Edit this generique de jeu videos type", match: :first

    fill_in "Name", with: @_generique_de_jeu_videos_type.name
    click_on "Update Generique de jeu videos type"

    assert_text "Generique de jeu videos type was successfully updated"
    click_on "Back"
  end

  test "should destroy Generique de jeu videos type" do
    visit _generique_de_jeu_videos_type_url(@_generique_de_jeu_videos_type)
    click_on "Destroy this generique de jeu videos type", match: :first

    assert_text "Generique de jeu videos type was successfully destroyed"
  end
end
