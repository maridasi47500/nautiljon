require "application_system_test_case"

class BrevesConcertsTest < ApplicationSystemTestCase
  setup do
    @_breves_concert = _breves_concerts(:one)
  end

  test "visiting the index" do
    visit _breves_concerts_url
    assert_selector "h1", text: "Breves concerts"
  end

  test "should create breves concert" do
    visit _breves_concerts_url
    click_on "New breves concert"

    fill_in "Name", with: @_breves_concert.name
    click_on "Create Breves concert"

    assert_text "Breves concert was successfully created"
    click_on "Back"
  end

  test "should update Breves concert" do
    visit _breves_concert_url(@_breves_concert)
    click_on "Edit this breves concert", match: :first

    fill_in "Name", with: @_breves_concert.name
    click_on "Update Breves concert"

    assert_text "Breves concert was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves concert" do
    visit _breves_concert_url(@_breves_concert)
    click_on "Destroy this breves concert", match: :first

    assert_text "Breves concert was successfully destroyed"
  end
end
