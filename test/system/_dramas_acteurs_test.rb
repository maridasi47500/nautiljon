require "application_system_test_case"

class DramasActeursTest < ApplicationSystemTestCase
  setup do
    @_dramas_acteur = _dramas_acteurs(:one)
  end

  test "visiting the index" do
    visit _dramas_acteurs_url
    assert_selector "h1", text: "Dramas acteurs"
  end

  test "should create dramas acteur" do
    visit _dramas_acteurs_url
    click_on "New dramas acteur"

    fill_in "Name", with: @_dramas_acteur.name
    click_on "Create Dramas acteur"

    assert_text "Dramas acteur was successfully created"
    click_on "Back"
  end

  test "should update Dramas acteur" do
    visit _dramas_acteur_url(@_dramas_acteur)
    click_on "Edit this dramas acteur", match: :first

    fill_in "Name", with: @_dramas_acteur.name
    click_on "Update Dramas acteur"

    assert_text "Dramas acteur was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas acteur" do
    visit _dramas_acteur_url(@_dramas_acteur)
    click_on "Destroy this dramas acteur", match: :first

    assert_text "Dramas acteur was successfully destroyed"
  end
end
