require "application_system_test_case"

class LivresLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_livres_litterature_asiatique = _livres_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit _livres_litterature_asiatiques_url
    assert_selector "h1", text: "Livres litterature asiatiques"
  end

  test "should create livres litterature asiatique" do
    visit _livres_litterature_asiatiques_url
    click_on "New livres litterature asiatique"

    fill_in "Name", with: @_livres_litterature_asiatique.name
    click_on "Create Livres litterature asiatique"

    assert_text "Livres litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Livres litterature asiatique" do
    visit _livres_litterature_asiatique_url(@_livres_litterature_asiatique)
    click_on "Edit this livres litterature asiatique", match: :first

    fill_in "Name", with: @_livres_litterature_asiatique.name
    click_on "Update Livres litterature asiatique"

    assert_text "Livres litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres litterature asiatique" do
    visit _livres_litterature_asiatique_url(@_livres_litterature_asiatique)
    click_on "Destroy this livres litterature asiatique", match: :first

    assert_text "Livres litterature asiatique was successfully destroyed"
  end
end
