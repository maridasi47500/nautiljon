require "application_system_test_case"

class LivresAnimePlusTest < ApplicationSystemTestCase
  setup do
    @_livres_anime_plu = _livres_anime_plus(:one)
  end

  test "visiting the index" do
    visit _livres_anime_plus_url
    assert_selector "h1", text: "Livres anime plus"
  end

  test "should create livres anime plu" do
    visit _livres_anime_plus_url
    click_on "New livres anime plu"

    fill_in "Name", with: @_livres_anime_plu.name
    click_on "Create Livres anime plu"

    assert_text "Livres anime plu was successfully created"
    click_on "Back"
  end

  test "should update Livres anime plu" do
    visit _livres_anime_plu_url(@_livres_anime_plu)
    click_on "Edit this livres anime plu", match: :first

    fill_in "Name", with: @_livres_anime_plu.name
    click_on "Update Livres anime plu"

    assert_text "Livres anime plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres anime plu" do
    visit _livres_anime_plu_url(@_livres_anime_plu)
    click_on "Destroy this livres anime plu", match: :first

    assert_text "Livres anime plu was successfully destroyed"
  end
end
