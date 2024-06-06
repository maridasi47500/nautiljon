require "application_system_test_case"

class BrevesCinemasTest < ApplicationSystemTestCase
  setup do
    @_breves_cinema = _breves_cinemas(:one)
  end

  test "visiting the index" do
    visit _breves_cinemas_url
    assert_selector "h1", text: "Breves cinemas"
  end

  test "should create breves cinema" do
    visit _breves_cinemas_url
    click_on "New breves cinema"

    fill_in "Name", with: @_breves_cinema.name
    click_on "Create Breves cinema"

    assert_text "Breves cinema was successfully created"
    click_on "Back"
  end

  test "should update Breves cinema" do
    visit _breves_cinema_url(@_breves_cinema)
    click_on "Edit this breves cinema", match: :first

    fill_in "Name", with: @_breves_cinema.name
    click_on "Update Breves cinema"

    assert_text "Breves cinema was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves cinema" do
    visit _breves_cinema_url(@_breves_cinema)
    click_on "Destroy this breves cinema", match: :first

    assert_text "Breves cinema was successfully destroyed"
  end
end
