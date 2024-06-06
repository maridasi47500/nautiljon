require "application_system_test_case"

class LivresGroupesTest < ApplicationSystemTestCase
  setup do
    @_livres_groupe = _livres_groupes(:one)
  end

  test "visiting the index" do
    visit _livres_groupes_url
    assert_selector "h1", text: "Livres groupes"
  end

  test "should create livres groupe" do
    visit _livres_groupes_url
    click_on "New livres groupe"

    fill_in "Name", with: @_livres_groupe.name
    click_on "Create Livres groupe"

    assert_text "Livres groupe was successfully created"
    click_on "Back"
  end

  test "should update Livres groupe" do
    visit _livres_groupe_url(@_livres_groupe)
    click_on "Edit this livres groupe", match: :first

    fill_in "Name", with: @_livres_groupe.name
    click_on "Update Livres groupe"

    assert_text "Livres groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres groupe" do
    visit _livres_groupe_url(@_livres_groupe)
    click_on "Destroy this livres groupe", match: :first

    assert_text "Livres groupe was successfully destroyed"
  end
end
