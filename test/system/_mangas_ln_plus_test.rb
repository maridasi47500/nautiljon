require "application_system_test_case"

class MangasLnPlusTest < ApplicationSystemTestCase
  setup do
    @_mangas_ln_plu = _mangas_ln_plus(:one)
  end

  test "visiting the index" do
    visit _mangas_ln_plus_url
    assert_selector "h1", text: "Mangas ln plus"
  end

  test "should create mangas ln plu" do
    visit _mangas_ln_plus_url
    click_on "New mangas ln plu"

    fill_in "Name", with: @_mangas_ln_plu.name
    click_on "Create Mangas ln plu"

    assert_text "Mangas ln plu was successfully created"
    click_on "Back"
  end

  test "should update Mangas ln plu" do
    visit _mangas_ln_plu_url(@_mangas_ln_plu)
    click_on "Edit this mangas ln plu", match: :first

    fill_in "Name", with: @_mangas_ln_plu.name
    click_on "Update Mangas ln plu"

    assert_text "Mangas ln plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas ln plu" do
    visit _mangas_ln_plu_url(@_mangas_ln_plu)
    click_on "Destroy this mangas ln plu", match: :first

    assert_text "Mangas ln plu was successfully destroyed"
  end
end
