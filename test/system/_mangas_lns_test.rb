require "application_system_test_case"

class MangasLnsTest < ApplicationSystemTestCase
  setup do
    @_mangas_ln = _mangas_lns(:one)
  end

  test "visiting the index" do
    visit _mangas_lns_url
    assert_selector "h1", text: "Mangas lns"
  end

  test "should create mangas ln" do
    visit _mangas_lns_url
    click_on "New mangas ln"

    fill_in "Name", with: @_mangas_ln.name
    click_on "Create Mangas ln"

    assert_text "Mangas ln was successfully created"
    click_on "Back"
  end

  test "should update Mangas ln" do
    visit _mangas_ln_url(@_mangas_ln)
    click_on "Edit this mangas ln", match: :first

    fill_in "Name", with: @_mangas_ln.name
    click_on "Update Mangas ln"

    assert_text "Mangas ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas ln" do
    visit _mangas_ln_url(@_mangas_ln)
    click_on "Destroy this mangas ln", match: :first

    assert_text "Mangas ln was successfully destroyed"
  end
end
