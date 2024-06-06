require "application_system_test_case"

class EvenementsTest < ApplicationSystemTestCase
  setup do
    @evenement = evenements(:one)
  end

  test "visiting the index" do
    visit evenements_url
    assert_selector "h1", text: "Evenements"
  end

  test "should create evenement" do
    visit evenements_url
    click_on "New evenement"

    fill_in "Acceptregles", with: @evenement.acceptregles
    fill_in "Adresse", with: @evenement.adresse
    fill_in "Date", with: @evenement.date
    fill_in "Date fin", with: @evenement.date_fin
    fill_in "Description", with: @evenement.description
    fill_in "Evenements pays", with: @evenement.evenements_pays_id
    fill_in "Evenements people", with: @evenement.evenements_people_id
    fill_in "Heure", with: @evenement.heure
    fill_in "Lien", with: @evenement.lien
    fill_in "Lieu", with: @evenement.lieu
    fill_in "Prix", with: @evenement.prix
    fill_in "Site", with: @evenement.site
    fill_in "Titre", with: @evenement.titre
    fill_in "Ville", with: @evenement.ville
    click_on "Create Evenement"

    assert_text "Evenement was successfully created"
    click_on "Back"
  end

  test "should update Evenement" do
    visit evenement_url(@evenement)
    click_on "Edit this evenement", match: :first

    fill_in "Acceptregles", with: @evenement.acceptregles
    fill_in "Adresse", with: @evenement.adresse
    fill_in "Date", with: @evenement.date
    fill_in "Date fin", with: @evenement.date_fin
    fill_in "Description", with: @evenement.description
    fill_in "Evenements pays", with: @evenement.evenements_pays_id
    fill_in "Evenements people", with: @evenement.evenements_people_id
    fill_in "Heure", with: @evenement.heure
    fill_in "Lien", with: @evenement.lien
    fill_in "Lieu", with: @evenement.lieu
    fill_in "Prix", with: @evenement.prix
    fill_in "Site", with: @evenement.site
    fill_in "Titre", with: @evenement.titre
    fill_in "Ville", with: @evenement.ville
    click_on "Update Evenement"

    assert_text "Evenement was successfully updated"
    click_on "Back"
  end

  test "should destroy Evenement" do
    visit evenement_url(@evenement)
    click_on "Destroy this evenement", match: :first

    assert_text "Evenement was successfully destroyed"
  end
end
