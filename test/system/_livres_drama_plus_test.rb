require "application_system_test_case"

class LivresDramaPlusTest < ApplicationSystemTestCase
  setup do
    @_livres_drama_plu = _livres_drama_plus(:one)
  end

  test "visiting the index" do
    visit _livres_drama_plus_url
    assert_selector "h1", text: "Livres drama plus"
  end

  test "should create livres drama plu" do
    visit _livres_drama_plus_url
    click_on "New livres drama plu"

    fill_in "Name", with: @_livres_drama_plu.name
    click_on "Create Livres drama plu"

    assert_text "Livres drama plu was successfully created"
    click_on "Back"
  end

  test "should update Livres drama plu" do
    visit _livres_drama_plu_url(@_livres_drama_plu)
    click_on "Edit this livres drama plu", match: :first

    fill_in "Name", with: @_livres_drama_plu.name
    click_on "Update Livres drama plu"

    assert_text "Livres drama plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres drama plu" do
    visit _livres_drama_plu_url(@_livres_drama_plu)
    click_on "Destroy this livres drama plu", match: :first

    assert_text "Livres drama plu was successfully destroyed"
  end
end
