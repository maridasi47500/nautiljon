require "application_system_test_case"

class DoujinshisCensuresTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_censure = _doujinshis_censures(:one)
  end

  test "visiting the index" do
    visit _doujinshis_censures_url
    assert_selector "h1", text: "Doujinshis censures"
  end

  test "should create doujinshis censure" do
    visit _doujinshis_censures_url
    click_on "New doujinshis censure"

    fill_in "Name", with: @_doujinshis_censure.name
    click_on "Create Doujinshis censure"

    assert_text "Doujinshis censure was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis censure" do
    visit _doujinshis_censure_url(@_doujinshis_censure)
    click_on "Edit this doujinshis censure", match: :first

    fill_in "Name", with: @_doujinshis_censure.name
    click_on "Update Doujinshis censure"

    assert_text "Doujinshis censure was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis censure" do
    visit _doujinshis_censure_url(@_doujinshis_censure)
    click_on "Destroy this doujinshis censure", match: :first

    assert_text "Doujinshis censure was successfully destroyed"
  end
end
