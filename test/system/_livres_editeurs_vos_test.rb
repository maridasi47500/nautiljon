require "application_system_test_case"

class LivresEditeursVosTest < ApplicationSystemTestCase
  setup do
    @_livres_editeurs_vo = _livres_editeurs_vos(:one)
  end

  test "visiting the index" do
    visit _livres_editeurs_vos_url
    assert_selector "h1", text: "Livres editeurs vos"
  end

  test "should create livres editeurs vo" do
    visit _livres_editeurs_vos_url
    click_on "New livres editeurs vo"

    fill_in "Name", with: @_livres_editeurs_vo.name
    click_on "Create Livres editeurs vo"

    assert_text "Livres editeurs vo was successfully created"
    click_on "Back"
  end

  test "should update Livres editeurs vo" do
    visit _livres_editeurs_vo_url(@_livres_editeurs_vo)
    click_on "Edit this livres editeurs vo", match: :first

    fill_in "Name", with: @_livres_editeurs_vo.name
    click_on "Update Livres editeurs vo"

    assert_text "Livres editeurs vo was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres editeurs vo" do
    visit _livres_editeurs_vo_url(@_livres_editeurs_vo)
    click_on "Destroy this livres editeurs vo", match: :first

    assert_text "Livres editeurs vo was successfully destroyed"
  end
end
