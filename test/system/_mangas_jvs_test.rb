require "application_system_test_case"

class MangasJvsTest < ApplicationSystemTestCase
  setup do
    @_mangas_jv = _mangas_jvs(:one)
  end

  test "visiting the index" do
    visit _mangas_jvs_url
    assert_selector "h1", text: "Mangas jvs"
  end

  test "should create mangas jv" do
    visit _mangas_jvs_url
    click_on "New mangas jv"

    fill_in "Name", with: @_mangas_jv.name
    click_on "Create Mangas jv"

    assert_text "Mangas jv was successfully created"
    click_on "Back"
  end

  test "should update Mangas jv" do
    visit _mangas_jv_url(@_mangas_jv)
    click_on "Edit this mangas jv", match: :first

    fill_in "Name", with: @_mangas_jv.name
    click_on "Update Mangas jv"

    assert_text "Mangas jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas jv" do
    visit _mangas_jv_url(@_mangas_jv)
    click_on "Destroy this mangas jv", match: :first

    assert_text "Mangas jv was successfully destroyed"
  end
end
