require "application_system_test_case"

class MangasEditeursVosTest < ApplicationSystemTestCase
  setup do
    @_mangas_editeurs_vo = _mangas_editeurs_vos(:one)
  end

  test "visiting the index" do
    visit _mangas_editeurs_vos_url
    assert_selector "h1", text: "Mangas editeurs vos"
  end

  test "should create mangas editeurs vo" do
    visit _mangas_editeurs_vos_url
    click_on "New mangas editeurs vo"

    fill_in "Name", with: @_mangas_editeurs_vo.name
    click_on "Create Mangas editeurs vo"

    assert_text "Mangas editeurs vo was successfully created"
    click_on "Back"
  end

  test "should update Mangas editeurs vo" do
    visit _mangas_editeurs_vo_url(@_mangas_editeurs_vo)
    click_on "Edit this mangas editeurs vo", match: :first

    fill_in "Name", with: @_mangas_editeurs_vo.name
    click_on "Update Mangas editeurs vo"

    assert_text "Mangas editeurs vo was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas editeurs vo" do
    visit _mangas_editeurs_vo_url(@_mangas_editeurs_vo)
    click_on "Destroy this mangas editeurs vo", match: :first

    assert_text "Mangas editeurs vo was successfully destroyed"
  end
end
