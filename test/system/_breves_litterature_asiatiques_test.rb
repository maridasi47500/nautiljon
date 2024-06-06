require "application_system_test_case"

class BrevesLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_breves_litterature_asiatique = _breves_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit _breves_litterature_asiatiques_url
    assert_selector "h1", text: "Breves litterature asiatiques"
  end

  test "should create breves litterature asiatique" do
    visit _breves_litterature_asiatiques_url
    click_on "New breves litterature asiatique"

    fill_in "Name", with: @_breves_litterature_asiatique.name
    click_on "Create Breves litterature asiatique"

    assert_text "Breves litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Breves litterature asiatique" do
    visit _breves_litterature_asiatique_url(@_breves_litterature_asiatique)
    click_on "Edit this breves litterature asiatique", match: :first

    fill_in "Name", with: @_breves_litterature_asiatique.name
    click_on "Update Breves litterature asiatique"

    assert_text "Breves litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves litterature asiatique" do
    visit _breves_litterature_asiatique_url(@_breves_litterature_asiatique)
    click_on "Destroy this breves litterature asiatique", match: :first

    assert_text "Breves litterature asiatique was successfully destroyed"
  end
end
