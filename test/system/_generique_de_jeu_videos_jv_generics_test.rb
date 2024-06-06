require "application_system_test_case"

class GeneriqueDeJeuVideosJvGenericsTest < ApplicationSystemTestCase
  setup do
    @_generique_de_jeu_videos_jv_generic = _generique_de_jeu_videos_jv_generics(:one)
  end

  test "visiting the index" do
    visit _generique_de_jeu_videos_jv_generics_url
    assert_selector "h1", text: "Generique de jeu videos jv generics"
  end

  test "should create generique de jeu videos jv generic" do
    visit _generique_de_jeu_videos_jv_generics_url
    click_on "New generique de jeu videos jv generic"

    fill_in "Name", with: @_generique_de_jeu_videos_jv_generic.name
    click_on "Create Generique de jeu videos jv generic"

    assert_text "Generique de jeu videos jv generic was successfully created"
    click_on "Back"
  end

  test "should update Generique de jeu videos jv generic" do
    visit _generique_de_jeu_videos_jv_generic_url(@_generique_de_jeu_videos_jv_generic)
    click_on "Edit this generique de jeu videos jv generic", match: :first

    fill_in "Name", with: @_generique_de_jeu_videos_jv_generic.name
    click_on "Update Generique de jeu videos jv generic"

    assert_text "Generique de jeu videos jv generic was successfully updated"
    click_on "Back"
  end

  test "should destroy Generique de jeu videos jv generic" do
    visit _generique_de_jeu_videos_jv_generic_url(@_generique_de_jeu_videos_jv_generic)
    click_on "Destroy this generique de jeu videos jv generic", match: :first

    assert_text "Generique de jeu videos jv generic was successfully destroyed"
  end
end
