require "application_system_test_case"

class GoodiesEditeursVosTest < ApplicationSystemTestCase
  setup do
    @_goodies_editeurs_vo = _goodies_editeurs_vos(:one)
  end

  test "visiting the index" do
    visit _goodies_editeurs_vos_url
    assert_selector "h1", text: "Goodies editeurs vos"
  end

  test "should create goodies editeurs vo" do
    visit _goodies_editeurs_vos_url
    click_on "New goodies editeurs vo"

    fill_in "Name", with: @_goodies_editeurs_vo.name
    click_on "Create Goodies editeurs vo"

    assert_text "Goodies editeurs vo was successfully created"
    click_on "Back"
  end

  test "should update Goodies editeurs vo" do
    visit _goodies_editeurs_vo_url(@_goodies_editeurs_vo)
    click_on "Edit this goodies editeurs vo", match: :first

    fill_in "Name", with: @_goodies_editeurs_vo.name
    click_on "Update Goodies editeurs vo"

    assert_text "Goodies editeurs vo was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies editeurs vo" do
    visit _goodies_editeurs_vo_url(@_goodies_editeurs_vo)
    click_on "Destroy this goodies editeurs vo", match: :first

    assert_text "Goodies editeurs vo was successfully destroyed"
  end
end
