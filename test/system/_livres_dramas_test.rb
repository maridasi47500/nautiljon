require "application_system_test_case"

class LivresDramasTest < ApplicationSystemTestCase
  setup do
    @_livres_drama = _livres_dramas(:one)
  end

  test "visiting the index" do
    visit _livres_dramas_url
    assert_selector "h1", text: "Livres dramas"
  end

  test "should create livres drama" do
    visit _livres_dramas_url
    click_on "New livres drama"

    fill_in "Name", with: @_livres_drama.name
    click_on "Create Livres drama"

    assert_text "Livres drama was successfully created"
    click_on "Back"
  end

  test "should update Livres drama" do
    visit _livres_drama_url(@_livres_drama)
    click_on "Edit this livres drama", match: :first

    fill_in "Name", with: @_livres_drama.name
    click_on "Update Livres drama"

    assert_text "Livres drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres drama" do
    visit _livres_drama_url(@_livres_drama)
    click_on "Destroy this livres drama", match: :first

    assert_text "Livres drama was successfully destroyed"
  end
end
