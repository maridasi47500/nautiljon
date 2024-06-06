require "application_system_test_case"

class EvènementsPaysTest < ApplicationSystemTestCase
  setup do
    @evènements_pay = evènements_pays(:one)
  end

  test "visiting the index" do
    visit evènements_pays_url
    assert_selector "h1", text: "Evènements pays"
  end

  test "should create evènements pay" do
    visit evènements_pays_url
    click_on "New evènements pay"

    fill_in "Name", with: @evènements_pay.name
    click_on "Create Evènements pay"

    assert_text "Evènements pay was successfully created"
    click_on "Back"
  end

  test "should update Evènements pay" do
    visit evènements_pay_url(@evènements_pay)
    click_on "Edit this evènements pay", match: :first

    fill_in "Name", with: @evènements_pay.name
    click_on "Update Evènements pay"

    assert_text "Evènements pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Evènements pay" do
    visit evènements_pay_url(@evènements_pay)
    click_on "Destroy this evènements pay", match: :first

    assert_text "Evènements pay was successfully destroyed"
  end
end
