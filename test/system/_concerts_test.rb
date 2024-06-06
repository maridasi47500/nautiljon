require "application_system_test_case"

class ConcertsTest < ApplicationSystemTestCase
  setup do
    @_concert = _concerts(:one)
  end

  test "visiting the index" do
    visit _concerts_url
    assert_selector "h1", text: "Concerts"
  end

  test "should create concert" do
    visit _concerts_url
    click_on "New concert"

    fill_in "Concerts artiste", with: @_concert._concerts_artiste_id
    fill_in "Concerts pays", with: @_concert._concerts_pays_id
    fill_in "Acceptregles", with: @_concert.acceptregles
    fill_in "Adresse", with: @_concert.adresse
    fill_in "Date", with: @_concert.date
    fill_in "Endroit", with: @_concert.endroit
    fill_in "Heure", with: @_concert.heure
    fill_in "Infos", with: @_concert.infos
    fill_in "Lien", with: @_concert.lien
    fill_in "Nom", with: @_concert.nom
    fill_in "Prix", with: @_concert.prix
    fill_in "Ville", with: @_concert.ville
    click_on "Create Concert"

    assert_text "Concert was successfully created"
    click_on "Back"
  end

  test "should update Concert" do
    visit _concert_url(@_concert)
    click_on "Edit this concert", match: :first

    fill_in "Concerts artiste", with: @_concert._concerts_artiste_id
    fill_in "Concerts pays", with: @_concert._concerts_pays_id
    fill_in "Acceptregles", with: @_concert.acceptregles
    fill_in "Adresse", with: @_concert.adresse
    fill_in "Date", with: @_concert.date
    fill_in "Endroit", with: @_concert.endroit
    fill_in "Heure", with: @_concert.heure
    fill_in "Infos", with: @_concert.infos
    fill_in "Lien", with: @_concert.lien
    fill_in "Nom", with: @_concert.nom
    fill_in "Prix", with: @_concert.prix
    fill_in "Ville", with: @_concert.ville
    click_on "Update Concert"

    assert_text "Concert was successfully updated"
    click_on "Back"
  end

  test "should destroy Concert" do
    visit _concert_url(@_concert)
    click_on "Destroy this concert", match: :first

    assert_text "Concert was successfully destroyed"
  end
end
