require "application_system_test_case"

class GoodiesPaysTest < ApplicationSystemTestCase
  setup do
    @_goodies_pay = _goodies_pays(:one)
  end

  test "visiting the index" do
    visit _goodies_pays_url
    assert_selector "h1", text: "Goodies pays"
  end

  test "should create goodies pay" do
    visit _goodies_pays_url
    click_on "New goodies pay"

    fill_in "Name", with: @_goodies_pay.name
    click_on "Create Goodies pay"

    assert_text "Goodies pay was successfully created"
    click_on "Back"
  end

  test "should update Goodies pay" do
    visit _goodies_pay_url(@_goodies_pay)
    click_on "Edit this goodies pay", match: :first

    fill_in "Name", with: @_goodies_pay.name
    click_on "Update Goodies pay"

    assert_text "Goodies pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies pay" do
    visit _goodies_pay_url(@_goodies_pay)
    click_on "Destroy this goodies pay", match: :first

    assert_text "Goodies pay was successfully destroyed"
  end
end
