require "application_system_test_case"

class PetitesAnnoncesSectionsTest < ApplicationSystemTestCase
  setup do
    @_petites_annonces_section = _petites_annonces_sections(:one)
  end

  test "visiting the index" do
    visit _petites_annonces_sections_url
    assert_selector "h1", text: "Petites annonces sections"
  end

  test "should create petites annonces section" do
    visit _petites_annonces_sections_url
    click_on "New petites annonces section"

    fill_in "Name", with: @_petites_annonces_section.name
    click_on "Create Petites annonces section"

    assert_text "Petites annonces section was successfully created"
    click_on "Back"
  end

  test "should update Petites annonces section" do
    visit _petites_annonces_section_url(@_petites_annonces_section)
    click_on "Edit this petites annonces section", match: :first

    fill_in "Name", with: @_petites_annonces_section.name
    click_on "Update Petites annonces section"

    assert_text "Petites annonces section was successfully updated"
    click_on "Back"
  end

  test "should destroy Petites annonces section" do
    visit _petites_annonces_section_url(@_petites_annonces_section)
    click_on "Destroy this petites annonces section", match: :first

    assert_text "Petites annonces section was successfully destroyed"
  end
end
