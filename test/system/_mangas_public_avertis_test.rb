require "application_system_test_case"

class MangasPublicAvertisTest < ApplicationSystemTestCase
  setup do
    @_mangas_public_averti = _mangas_public_avertis(:one)
  end

  test "visiting the index" do
    visit _mangas_public_avertis_url
    assert_selector "h1", text: "Mangas public avertis"
  end

  test "should create mangas public averti" do
    visit _mangas_public_avertis_url
    click_on "New mangas public averti"

    fill_in "Name", with: @_mangas_public_averti.name
    click_on "Create Mangas public averti"

    assert_text "Mangas public averti was successfully created"
    click_on "Back"
  end

  test "should update Mangas public averti" do
    visit _mangas_public_averti_url(@_mangas_public_averti)
    click_on "Edit this mangas public averti", match: :first

    fill_in "Name", with: @_mangas_public_averti.name
    click_on "Update Mangas public averti"

    assert_text "Mangas public averti was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas public averti" do
    visit _mangas_public_averti_url(@_mangas_public_averti)
    click_on "Destroy this mangas public averti", match: :first

    assert_text "Mangas public averti was successfully destroyed"
  end
end
