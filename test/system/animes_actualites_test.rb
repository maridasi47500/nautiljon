require "application_system_test_case"

class AnimesActualitesTest < ApplicationSystemTestCase
  setup do
    @animes_actualite = animes_actualites(:one)
  end

  test "visiting the index" do
    visit animes_actualites_url
    assert_selector "h1", text: "Animes actualites"
  end

  test "should create animes actualite" do
    visit animes_actualites_url
    click_on "New animes actualite"

    fill_in "Name", with: @animes_actualite.name
    click_on "Create Animes actualite"

    assert_text "Animes actualite was successfully created"
    click_on "Back"
  end

  test "should update Animes actualite" do
    visit animes_actualite_url(@animes_actualite)
    click_on "Edit this animes actualite", match: :first

    fill_in "Name", with: @animes_actualite.name
    click_on "Update Animes actualite"

    assert_text "Animes actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes actualite" do
    visit animes_actualite_url(@animes_actualite)
    click_on "Destroy this animes actualite", match: :first

    assert_text "Animes actualite was successfully destroyed"
  end
end
