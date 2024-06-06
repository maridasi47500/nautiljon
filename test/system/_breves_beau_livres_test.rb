require "application_system_test_case"

class BrevesBeauLivresTest < ApplicationSystemTestCase
  setup do
    @_breves_beau_livre = _breves_beau_livres(:one)
  end

  test "visiting the index" do
    visit _breves_beau_livres_url
    assert_selector "h1", text: "Breves beau livres"
  end

  test "should create breves beau livre" do
    visit _breves_beau_livres_url
    click_on "New breves beau livre"

    fill_in "Name", with: @_breves_beau_livre.name
    click_on "Create Breves beau livre"

    assert_text "Breves beau livre was successfully created"
    click_on "Back"
  end

  test "should update Breves beau livre" do
    visit _breves_beau_livre_url(@_breves_beau_livre)
    click_on "Edit this breves beau livre", match: :first

    fill_in "Name", with: @_breves_beau_livre.name
    click_on "Update Breves beau livre"

    assert_text "Breves beau livre was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves beau livre" do
    visit _breves_beau_livre_url(@_breves_beau_livre)
    click_on "Destroy this breves beau livre", match: :first

    assert_text "Breves beau livre was successfully destroyed"
  end
end
