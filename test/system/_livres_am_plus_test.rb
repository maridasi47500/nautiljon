require "application_system_test_case"

class LivresAmPlusTest < ApplicationSystemTestCase
  setup do
    @_livres_am_plu = _livres_am_plus(:one)
  end

  test "visiting the index" do
    visit _livres_am_plus_url
    assert_selector "h1", text: "Livres am plus"
  end

  test "should create livres am plu" do
    visit _livres_am_plus_url
    click_on "New livres am plu"

    fill_in "Name", with: @_livres_am_plu.name
    click_on "Create Livres am plu"

    assert_text "Livres am plu was successfully created"
    click_on "Back"
  end

  test "should update Livres am plu" do
    visit _livres_am_plu_url(@_livres_am_plu)
    click_on "Edit this livres am plu", match: :first

    fill_in "Name", with: @_livres_am_plu.name
    click_on "Update Livres am plu"

    assert_text "Livres am plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres am plu" do
    visit _livres_am_plu_url(@_livres_am_plu)
    click_on "Destroy this livres am plu", match: :first

    assert_text "Livres am plu was successfully destroyed"
  end
end
