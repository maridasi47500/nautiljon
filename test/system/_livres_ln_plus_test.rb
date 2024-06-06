require "application_system_test_case"

class LivresLnPlusTest < ApplicationSystemTestCase
  setup do
    @_livres_ln_plu = _livres_ln_plus(:one)
  end

  test "visiting the index" do
    visit _livres_ln_plus_url
    assert_selector "h1", text: "Livres ln plus"
  end

  test "should create livres ln plu" do
    visit _livres_ln_plus_url
    click_on "New livres ln plu"

    fill_in "Name", with: @_livres_ln_plu.name
    click_on "Create Livres ln plu"

    assert_text "Livres ln plu was successfully created"
    click_on "Back"
  end

  test "should update Livres ln plu" do
    visit _livres_ln_plu_url(@_livres_ln_plu)
    click_on "Edit this livres ln plu", match: :first

    fill_in "Name", with: @_livres_ln_plu.name
    click_on "Update Livres ln plu"

    assert_text "Livres ln plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres ln plu" do
    visit _livres_ln_plu_url(@_livres_ln_plu)
    click_on "Destroy this livres ln plu", match: :first

    assert_text "Livres ln plu was successfully destroyed"
  end
end
