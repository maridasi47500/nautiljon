require "application_system_test_case"

class PetitesAnnoncesLieusTest < ApplicationSystemTestCase
  setup do
    @_petites_annonces_lieu = _petites_annonces_lieus(:one)
  end

  test "visiting the index" do
    visit _petites_annonces_lieus_url
    assert_selector "h1", text: "Petites annonces lieus"
  end

  test "should create petites annonces lieu" do
    visit _petites_annonces_lieus_url
    click_on "New petites annonces lieu"

    fill_in "Name", with: @_petites_annonces_lieu.name
    click_on "Create Petites annonces lieu"

    assert_text "Petites annonces lieu was successfully created"
    click_on "Back"
  end

  test "should update Petites annonces lieu" do
    visit _petites_annonces_lieu_url(@_petites_annonces_lieu)
    click_on "Edit this petites annonces lieu", match: :first

    fill_in "Name", with: @_petites_annonces_lieu.name
    click_on "Update Petites annonces lieu"

    assert_text "Petites annonces lieu was successfully updated"
    click_on "Back"
  end

  test "should destroy Petites annonces lieu" do
    visit _petites_annonces_lieu_url(@_petites_annonces_lieu)
    click_on "Destroy this petites annonces lieu", match: :first

    assert_text "Petites annonces lieu was successfully destroyed"
  end
end
