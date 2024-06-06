require "application_system_test_case"

class LivresMangaPlusTest < ApplicationSystemTestCase
  setup do
    @_livres_manga_plu = _livres_manga_plus(:one)
  end

  test "visiting the index" do
    visit _livres_manga_plus_url
    assert_selector "h1", text: "Livres manga plus"
  end

  test "should create livres manga plu" do
    visit _livres_manga_plus_url
    click_on "New livres manga plu"

    fill_in "Name", with: @_livres_manga_plu.name
    click_on "Create Livres manga plu"

    assert_text "Livres manga plu was successfully created"
    click_on "Back"
  end

  test "should update Livres manga plu" do
    visit _livres_manga_plu_url(@_livres_manga_plu)
    click_on "Edit this livres manga plu", match: :first

    fill_in "Name", with: @_livres_manga_plu.name
    click_on "Update Livres manga plu"

    assert_text "Livres manga plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres manga plu" do
    visit _livres_manga_plu_url(@_livres_manga_plu)
    click_on "Destroy this livres manga plu", match: :first

    assert_text "Livres manga plu was successfully destroyed"
  end
end
