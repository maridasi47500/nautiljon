require "application_system_test_case"

class DoujinshisLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_litterature_asiatique = _doujinshis_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit _doujinshis_litterature_asiatiques_url
    assert_selector "h1", text: "Doujinshis litterature asiatiques"
  end

  test "should create doujinshis litterature asiatique" do
    visit _doujinshis_litterature_asiatiques_url
    click_on "New doujinshis litterature asiatique"

    fill_in "Name", with: @_doujinshis_litterature_asiatique.name
    click_on "Create Doujinshis litterature asiatique"

    assert_text "Doujinshis litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis litterature asiatique" do
    visit _doujinshis_litterature_asiatique_url(@_doujinshis_litterature_asiatique)
    click_on "Edit this doujinshis litterature asiatique", match: :first

    fill_in "Name", with: @_doujinshis_litterature_asiatique.name
    click_on "Update Doujinshis litterature asiatique"

    assert_text "Doujinshis litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis litterature asiatique" do
    visit _doujinshis_litterature_asiatique_url(@_doujinshis_litterature_asiatique)
    click_on "Destroy this doujinshis litterature asiatique", match: :first

    assert_text "Doujinshis litterature asiatique was successfully destroyed"
  end
end
