require "application_system_test_case"

class MangasLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_mangas_litterature_asiatique = _mangas_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit _mangas_litterature_asiatiques_url
    assert_selector "h1", text: "Mangas litterature asiatiques"
  end

  test "should create mangas litterature asiatique" do
    visit _mangas_litterature_asiatiques_url
    click_on "New mangas litterature asiatique"

    fill_in "Name", with: @_mangas_litterature_asiatique.name
    click_on "Create Mangas litterature asiatique"

    assert_text "Mangas litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Mangas litterature asiatique" do
    visit _mangas_litterature_asiatique_url(@_mangas_litterature_asiatique)
    click_on "Edit this mangas litterature asiatique", match: :first

    fill_in "Name", with: @_mangas_litterature_asiatique.name
    click_on "Update Mangas litterature asiatique"

    assert_text "Mangas litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas litterature asiatique" do
    visit _mangas_litterature_asiatique_url(@_mangas_litterature_asiatique)
    click_on "Destroy this mangas litterature asiatique", match: :first

    assert_text "Mangas litterature asiatique was successfully destroyed"
  end
end
