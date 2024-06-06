require "application_system_test_case"

class MangasAmPlusTest < ApplicationSystemTestCase
  setup do
    @_mangas_am_plu = _mangas_am_plus(:one)
  end

  test "visiting the index" do
    visit _mangas_am_plus_url
    assert_selector "h1", text: "Mangas am plus"
  end

  test "should create mangas am plu" do
    visit _mangas_am_plus_url
    click_on "New mangas am plu"

    fill_in "Name", with: @_mangas_am_plu.name
    click_on "Create Mangas am plu"

    assert_text "Mangas am plu was successfully created"
    click_on "Back"
  end

  test "should update Mangas am plu" do
    visit _mangas_am_plu_url(@_mangas_am_plu)
    click_on "Edit this mangas am plu", match: :first

    fill_in "Name", with: @_mangas_am_plu.name
    click_on "Update Mangas am plu"

    assert_text "Mangas am plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas am plu" do
    visit _mangas_am_plu_url(@_mangas_am_plu)
    click_on "Destroy this mangas am plu", match: :first

    assert_text "Mangas am plu was successfully destroyed"
  end
end
