require "application_system_test_case"

class ConcertsPaysTest < ApplicationSystemTestCase
  setup do
    @_concerts_pay = _concerts_pays(:one)
  end

  test "visiting the index" do
    visit _concerts_pays_url
    assert_selector "h1", text: "Concerts pays"
  end

  test "should create concerts pay" do
    visit _concerts_pays_url
    click_on "New concerts pay"

    fill_in "Name", with: @_concerts_pay.name
    click_on "Create Concerts pay"

    assert_text "Concerts pay was successfully created"
    click_on "Back"
  end

  test "should update Concerts pay" do
    visit _concerts_pay_url(@_concerts_pay)
    click_on "Edit this concerts pay", match: :first

    fill_in "Name", with: @_concerts_pay.name
    click_on "Update Concerts pay"

    assert_text "Concerts pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Concerts pay" do
    visit _concerts_pay_url(@_concerts_pay)
    click_on "Destroy this concerts pay", match: :first

    assert_text "Concerts pay was successfully destroyed"
  end
end
