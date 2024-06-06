require "application_system_test_case"

class ArtbooksActualitesTest < ApplicationSystemTestCase
  setup do
    @artbooks_actualite = artbooks_actualites(:one)
  end

  test "visiting the index" do
    visit artbooks_actualites_url
    assert_selector "h1", text: "Artbooks actualites"
  end

  test "should create artbooks actualite" do
    visit artbooks_actualites_url
    click_on "New artbooks actualite"

    fill_in "Name", with: @artbooks_actualite.name
    click_on "Create Artbooks actualite"

    assert_text "Artbooks actualite was successfully created"
    click_on "Back"
  end

  test "should update Artbooks actualite" do
    visit artbooks_actualite_url(@artbooks_actualite)
    click_on "Edit this artbooks actualite", match: :first

    fill_in "Name", with: @artbooks_actualite.name
    click_on "Update Artbooks actualite"

    assert_text "Artbooks actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks actualite" do
    visit artbooks_actualite_url(@artbooks_actualite)
    click_on "Destroy this artbooks actualite", match: :first

    assert_text "Artbooks actualite was successfully destroyed"
  end
end
