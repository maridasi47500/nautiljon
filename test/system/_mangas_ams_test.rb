require "application_system_test_case"

class MangasAmsTest < ApplicationSystemTestCase
  setup do
    @_mangas_am = _mangas_ams(:one)
  end

  test "visiting the index" do
    visit _mangas_ams_url
    assert_selector "h1", text: "Mangas ams"
  end

  test "should create mangas am" do
    visit _mangas_ams_url
    click_on "New mangas am"

    fill_in "Name", with: @_mangas_am.name
    click_on "Create Mangas am"

    assert_text "Mangas am was successfully created"
    click_on "Back"
  end

  test "should update Mangas am" do
    visit _mangas_am_url(@_mangas_am)
    click_on "Edit this mangas am", match: :first

    fill_in "Name", with: @_mangas_am.name
    click_on "Update Mangas am"

    assert_text "Mangas am was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas am" do
    visit _mangas_am_url(@_mangas_am)
    click_on "Destroy this mangas am", match: :first

    assert_text "Mangas am was successfully destroyed"
  end
end
