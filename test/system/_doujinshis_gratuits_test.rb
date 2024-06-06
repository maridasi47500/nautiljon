require "application_system_test_case"

class DoujinshisGratuitsTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_gratuit = _doujinshis_gratuits(:one)
  end

  test "visiting the index" do
    visit _doujinshis_gratuits_url
    assert_selector "h1", text: "Doujinshis gratuits"
  end

  test "should create doujinshis gratuit" do
    visit _doujinshis_gratuits_url
    click_on "New doujinshis gratuit"

    fill_in "Name", with: @_doujinshis_gratuit.name
    click_on "Create Doujinshis gratuit"

    assert_text "Doujinshis gratuit was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis gratuit" do
    visit _doujinshis_gratuit_url(@_doujinshis_gratuit)
    click_on "Edit this doujinshis gratuit", match: :first

    fill_in "Name", with: @_doujinshis_gratuit.name
    click_on "Update Doujinshis gratuit"

    assert_text "Doujinshis gratuit was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis gratuit" do
    visit _doujinshis_gratuit_url(@_doujinshis_gratuit)
    click_on "Destroy this doujinshis gratuit", match: :first

    assert_text "Doujinshis gratuit was successfully destroyed"
  end
end
