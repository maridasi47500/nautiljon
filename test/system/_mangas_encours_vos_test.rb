require "application_system_test_case"

class MangasEncoursVosTest < ApplicationSystemTestCase
  setup do
    @_mangas_encours_vo = _mangas_encours_vos(:one)
  end

  test "visiting the index" do
    visit _mangas_encours_vos_url
    assert_selector "h1", text: "Mangas encours vos"
  end

  test "should create mangas encours vo" do
    visit _mangas_encours_vos_url
    click_on "New mangas encours vo"

    fill_in "Name", with: @_mangas_encours_vo.name
    click_on "Create Mangas encours vo"

    assert_text "Mangas encours vo was successfully created"
    click_on "Back"
  end

  test "should update Mangas encours vo" do
    visit _mangas_encours_vo_url(@_mangas_encours_vo)
    click_on "Edit this mangas encours vo", match: :first

    fill_in "Name", with: @_mangas_encours_vo.name
    click_on "Update Mangas encours vo"

    assert_text "Mangas encours vo was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas encours vo" do
    visit _mangas_encours_vo_url(@_mangas_encours_vo)
    click_on "Destroy this mangas encours vo", match: :first

    assert_text "Mangas encours vo was successfully destroyed"
  end
end
