require "application_system_test_case"

class GoodiesMatieresTest < ApplicationSystemTestCase
  setup do
    @_goodies_matiere = _goodies_matieres(:one)
  end

  test "visiting the index" do
    visit _goodies_matieres_url
    assert_selector "h1", text: "Goodies matieres"
  end

  test "should create goodies matiere" do
    visit _goodies_matieres_url
    click_on "New goodies matiere"

    fill_in "Name", with: @_goodies_matiere.name
    click_on "Create Goodies matiere"

    assert_text "Goodies matiere was successfully created"
    click_on "Back"
  end

  test "should update Goodies matiere" do
    visit _goodies_matiere_url(@_goodies_matiere)
    click_on "Edit this goodies matiere", match: :first

    fill_in "Name", with: @_goodies_matiere.name
    click_on "Update Goodies matiere"

    assert_text "Goodies matiere was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies matiere" do
    visit _goodies_matiere_url(@_goodies_matiere)
    click_on "Destroy this goodies matiere", match: :first

    assert_text "Goodies matiere was successfully destroyed"
  end
end
