require "application_system_test_case"

class DoujinshisPublicAvertisTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_public_averti = _doujinshis_public_avertis(:one)
  end

  test "visiting the index" do
    visit _doujinshis_public_avertis_url
    assert_selector "h1", text: "Doujinshis public avertis"
  end

  test "should create doujinshis public averti" do
    visit _doujinshis_public_avertis_url
    click_on "New doujinshis public averti"

    fill_in "Name", with: @_doujinshis_public_averti.name
    click_on "Create Doujinshis public averti"

    assert_text "Doujinshis public averti was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis public averti" do
    visit _doujinshis_public_averti_url(@_doujinshis_public_averti)
    click_on "Edit this doujinshis public averti", match: :first

    fill_in "Name", with: @_doujinshis_public_averti.name
    click_on "Update Doujinshis public averti"

    assert_text "Doujinshis public averti was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis public averti" do
    visit _doujinshis_public_averti_url(@_doujinshis_public_averti)
    click_on "Destroy this doujinshis public averti", match: :first

    assert_text "Doujinshis public averti was successfully destroyed"
  end
end
