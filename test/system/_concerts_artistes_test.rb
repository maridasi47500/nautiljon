require "application_system_test_case"

class ConcertsArtistesTest < ApplicationSystemTestCase
  setup do
    @_concerts_artiste = _concerts_artistes(:one)
  end

  test "visiting the index" do
    visit _concerts_artistes_url
    assert_selector "h1", text: "Concerts artistes"
  end

  test "should create concerts artiste" do
    visit _concerts_artistes_url
    click_on "New concerts artiste"

    fill_in "Name", with: @_concerts_artiste.name
    click_on "Create Concerts artiste"

    assert_text "Concerts artiste was successfully created"
    click_on "Back"
  end

  test "should update Concerts artiste" do
    visit _concerts_artiste_url(@_concerts_artiste)
    click_on "Edit this concerts artiste", match: :first

    fill_in "Name", with: @_concerts_artiste.name
    click_on "Update Concerts artiste"

    assert_text "Concerts artiste was successfully updated"
    click_on "Back"
  end

  test "should destroy Concerts artiste" do
    visit _concerts_artiste_url(@_concerts_artiste)
    click_on "Destroy this concerts artiste", match: :first

    assert_text "Concerts artiste was successfully destroyed"
  end
end
