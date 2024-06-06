require "application_system_test_case"

class DramasLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_dramas_litterature_asiatique = _dramas_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit _dramas_litterature_asiatiques_url
    assert_selector "h1", text: "Dramas litterature asiatiques"
  end

  test "should create dramas litterature asiatique" do
    visit _dramas_litterature_asiatiques_url
    click_on "New dramas litterature asiatique"

    fill_in "Name", with: @_dramas_litterature_asiatique.name
    click_on "Create Dramas litterature asiatique"

    assert_text "Dramas litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Dramas litterature asiatique" do
    visit _dramas_litterature_asiatique_url(@_dramas_litterature_asiatique)
    click_on "Edit this dramas litterature asiatique", match: :first

    fill_in "Name", with: @_dramas_litterature_asiatique.name
    click_on "Update Dramas litterature asiatique"

    assert_text "Dramas litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas litterature asiatique" do
    visit _dramas_litterature_asiatique_url(@_dramas_litterature_asiatique)
    click_on "Destroy this dramas litterature asiatique", match: :first

    assert_text "Dramas litterature asiatique was successfully destroyed"
  end
end
