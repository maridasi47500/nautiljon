require "application_system_test_case"

class MangasJvPlusTest < ApplicationSystemTestCase
  setup do
    @_mangas_jv_plu = _mangas_jv_plus(:one)
  end

  test "visiting the index" do
    visit _mangas_jv_plus_url
    assert_selector "h1", text: "Mangas jv plus"
  end

  test "should create mangas jv plu" do
    visit _mangas_jv_plus_url
    click_on "New mangas jv plu"

    fill_in "Name", with: @_mangas_jv_plu.name
    click_on "Create Mangas jv plu"

    assert_text "Mangas jv plu was successfully created"
    click_on "Back"
  end

  test "should update Mangas jv plu" do
    visit _mangas_jv_plu_url(@_mangas_jv_plu)
    click_on "Edit this mangas jv plu", match: :first

    fill_in "Name", with: @_mangas_jv_plu.name
    click_on "Update Mangas jv plu"

    assert_text "Mangas jv plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas jv plu" do
    visit _mangas_jv_plu_url(@_mangas_jv_plu)
    click_on "Destroy this mangas jv plu", match: :first

    assert_text "Mangas jv plu was successfully destroyed"
  end
end
