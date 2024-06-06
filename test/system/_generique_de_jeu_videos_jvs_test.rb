require "application_system_test_case"

class GeneriqueDeJeuVideosJvsTest < ApplicationSystemTestCase
  setup do
    @_generique_de_jeu_videos_jv = _generique_de_jeu_videos_jvs(:one)
  end

  test "visiting the index" do
    visit _generique_de_jeu_videos_jvs_url
    assert_selector "h1", text: "Generique de jeu videos jvs"
  end

  test "should create generique de jeu videos jv" do
    visit _generique_de_jeu_videos_jvs_url
    click_on "New generique de jeu videos jv"

    fill_in "Name", with: @_generique_de_jeu_videos_jv.name
    click_on "Create Generique de jeu videos jv"

    assert_text "Generique de jeu videos jv was successfully created"
    click_on "Back"
  end

  test "should update Generique de jeu videos jv" do
    visit _generique_de_jeu_videos_jv_url(@_generique_de_jeu_videos_jv)
    click_on "Edit this generique de jeu videos jv", match: :first

    fill_in "Name", with: @_generique_de_jeu_videos_jv.name
    click_on "Update Generique de jeu videos jv"

    assert_text "Generique de jeu videos jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Generique de jeu videos jv" do
    visit _generique_de_jeu_videos_jv_url(@_generique_de_jeu_videos_jv)
    click_on "Destroy this generique de jeu videos jv", match: :first

    assert_text "Generique de jeu videos jv was successfully destroyed"
  end
end
