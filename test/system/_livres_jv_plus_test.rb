require "application_system_test_case"

class LivresJvPlusTest < ApplicationSystemTestCase
  setup do
    @_livres_jv_plu = _livres_jv_plus(:one)
  end

  test "visiting the index" do
    visit _livres_jv_plus_url
    assert_selector "h1", text: "Livres jv plus"
  end

  test "should create livres jv plu" do
    visit _livres_jv_plus_url
    click_on "New livres jv plu"

    fill_in "Name", with: @_livres_jv_plu.name
    click_on "Create Livres jv plu"

    assert_text "Livres jv plu was successfully created"
    click_on "Back"
  end

  test "should update Livres jv plu" do
    visit _livres_jv_plu_url(@_livres_jv_plu)
    click_on "Edit this livres jv plu", match: :first

    fill_in "Name", with: @_livres_jv_plu.name
    click_on "Update Livres jv plu"

    assert_text "Livres jv plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres jv plu" do
    visit _livres_jv_plu_url(@_livres_jv_plu)
    click_on "Destroy this livres jv plu", match: :first

    assert_text "Livres jv plu was successfully destroyed"
  end
end
