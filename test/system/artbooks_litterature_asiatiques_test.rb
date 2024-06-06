require "application_system_test_case"

class ArtbooksLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @artbooks_litterature_asiatique = artbooks_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit artbooks_litterature_asiatiques_url
    assert_selector "h1", text: "Artbooks litterature asiatiques"
  end

  test "should create artbooks litterature asiatique" do
    visit artbooks_litterature_asiatiques_url
    click_on "New artbooks litterature asiatique"

    fill_in "Name", with: @artbooks_litterature_asiatique.name
    click_on "Create Artbooks litterature asiatique"

    assert_text "Artbooks litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Artbooks litterature asiatique" do
    visit artbooks_litterature_asiatique_url(@artbooks_litterature_asiatique)
    click_on "Edit this artbooks litterature asiatique", match: :first

    fill_in "Name", with: @artbooks_litterature_asiatique.name
    click_on "Update Artbooks litterature asiatique"

    assert_text "Artbooks litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks litterature asiatique" do
    visit artbooks_litterature_asiatique_url(@artbooks_litterature_asiatique)
    click_on "Destroy this artbooks litterature asiatique", match: :first

    assert_text "Artbooks litterature asiatique was successfully destroyed"
  end
end
