require "application_system_test_case"

class LivresStatutPublicationsTest < ApplicationSystemTestCase
  setup do
    @_livres_statut_publication = _livres_statut_publications(:one)
  end

  test "visiting the index" do
    visit _livres_statut_publications_url
    assert_selector "h1", text: "Livres statut publications"
  end

  test "should create livres statut publication" do
    visit _livres_statut_publications_url
    click_on "New livres statut publication"

    fill_in "Name", with: @_livres_statut_publication.name
    click_on "Create Livres statut publication"

    assert_text "Livres statut publication was successfully created"
    click_on "Back"
  end

  test "should update Livres statut publication" do
    visit _livres_statut_publication_url(@_livres_statut_publication)
    click_on "Edit this livres statut publication", match: :first

    fill_in "Name", with: @_livres_statut_publication.name
    click_on "Update Livres statut publication"

    assert_text "Livres statut publication was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres statut publication" do
    visit _livres_statut_publication_url(@_livres_statut_publication)
    click_on "Destroy this livres statut publication", match: :first

    assert_text "Livres statut publication was successfully destroyed"
  end
end
