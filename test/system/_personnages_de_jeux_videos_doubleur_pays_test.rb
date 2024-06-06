require "application_system_test_case"

class PersonnagesDeJeuxVideosDoubleurPaysTest < ApplicationSystemTestCase
  setup do
    @_personnages_de_jeux_videos_doubleur_pay = _personnages_de_jeux_videos_doubleur_pays(:one)
  end

  test "visiting the index" do
    visit _personnages_de_jeux_videos_doubleur_pays_url
    assert_selector "h1", text: "Personnages de jeux videos doubleur pays"
  end

  test "should create personnages de jeux videos doubleur pay" do
    visit _personnages_de_jeux_videos_doubleur_pays_url
    click_on "New personnages de jeux videos doubleur pay"

    fill_in "Name", with: @_personnages_de_jeux_videos_doubleur_pay.name
    click_on "Create Personnages de jeux videos doubleur pay"

    assert_text "Personnages de jeux videos doubleur pay was successfully created"
    click_on "Back"
  end

  test "should update Personnages de jeux videos doubleur pay" do
    visit _personnages_de_jeux_videos_doubleur_pay_url(@_personnages_de_jeux_videos_doubleur_pay)
    click_on "Edit this personnages de jeux videos doubleur pay", match: :first

    fill_in "Name", with: @_personnages_de_jeux_videos_doubleur_pay.name
    click_on "Update Personnages de jeux videos doubleur pay"

    assert_text "Personnages de jeux videos doubleur pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnages de jeux videos doubleur pay" do
    visit _personnages_de_jeux_videos_doubleur_pay_url(@_personnages_de_jeux_videos_doubleur_pay)
    click_on "Destroy this personnages de jeux videos doubleur pay", match: :first

    assert_text "Personnages de jeux videos doubleur pay was successfully destroyed"
  end
end
