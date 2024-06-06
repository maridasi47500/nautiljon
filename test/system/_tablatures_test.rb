require "application_system_test_case"

class TablaturesTest < ApplicationSystemTestCase
  setup do
    @_tablature = _tablatures(:one)
  end

  test "visiting the index" do
    visit _tablatures_url
    assert_selector "h1", text: "Tablatures"
  end

  test "should create tablature" do
    visit _tablatures_url
    click_on "New tablature"

    fill_in "Tablatures people", with: @_tablature._tablatures_people_id
    fill_in "Acceptregles", with: @_tablature.acceptregles
    fill_in "Comment", with: @_tablature.comment
    fill_in "Infos", with: @_tablature.infos
    fill_in "Statut prop", with: @_tablature.statut_prop
    fill_in "Titre", with: @_tablature.titre
    click_on "Create Tablature"

    assert_text "Tablature was successfully created"
    click_on "Back"
  end

  test "should update Tablature" do
    visit _tablature_url(@_tablature)
    click_on "Edit this tablature", match: :first

    fill_in "Tablatures people", with: @_tablature._tablatures_people_id
    fill_in "Acceptregles", with: @_tablature.acceptregles
    fill_in "Comment", with: @_tablature.comment
    fill_in "Infos", with: @_tablature.infos
    fill_in "Statut prop", with: @_tablature.statut_prop
    fill_in "Titre", with: @_tablature.titre
    click_on "Update Tablature"

    assert_text "Tablature was successfully updated"
    click_on "Back"
  end

  test "should destroy Tablature" do
    visit _tablature_url(@_tablature)
    click_on "Destroy this tablature", match: :first

    assert_text "Tablature was successfully destroyed"
  end
end
