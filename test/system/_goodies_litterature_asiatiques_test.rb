require "application_system_test_case"

class GoodiesLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_goodies_litterature_asiatique = _goodies_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit _goodies_litterature_asiatiques_url
    assert_selector "h1", text: "Goodies litterature asiatiques"
  end

  test "should create goodies litterature asiatique" do
    visit _goodies_litterature_asiatiques_url
    click_on "New goodies litterature asiatique"

    fill_in "Name", with: @_goodies_litterature_asiatique.name
    click_on "Create Goodies litterature asiatique"

    assert_text "Goodies litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Goodies litterature asiatique" do
    visit _goodies_litterature_asiatique_url(@_goodies_litterature_asiatique)
    click_on "Edit this goodies litterature asiatique", match: :first

    fill_in "Name", with: @_goodies_litterature_asiatique.name
    click_on "Update Goodies litterature asiatique"

    assert_text "Goodies litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies litterature asiatique" do
    visit _goodies_litterature_asiatique_url(@_goodies_litterature_asiatique)
    click_on "Destroy this goodies litterature asiatique", match: :first

    assert_text "Goodies litterature asiatique was successfully destroyed"
  end
end
