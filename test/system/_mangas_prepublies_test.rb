require "application_system_test_case"

class MangasPrepubliesTest < ApplicationSystemTestCase
  setup do
    @_mangas_prepubly = _mangas_prepublies(:one)
  end

  test "visiting the index" do
    visit _mangas_prepublies_url
    assert_selector "h1", text: "Mangas prepublies"
  end

  test "should create mangas prepublie" do
    visit _mangas_prepublies_url
    click_on "New mangas prepublie"

    fill_in "Name", with: @_mangas_prepubly.name
    click_on "Create Mangas prepublie"

    assert_text "Mangas prepublie was successfully created"
    click_on "Back"
  end

  test "should update Mangas prepublie" do
    visit _mangas_prepubly_url(@_mangas_prepubly)
    click_on "Edit this mangas prepublie", match: :first

    fill_in "Name", with: @_mangas_prepubly.name
    click_on "Update Mangas prepublie"

    assert_text "Mangas prepublie was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas prepublie" do
    visit _mangas_prepubly_url(@_mangas_prepubly)
    click_on "Destroy this mangas prepublie", match: :first

    assert_text "Mangas prepublie was successfully destroyed"
  end
end
