require "application_system_test_case"

class EvenementsPaysTest < ApplicationSystemTestCase
  setup do
    @evenements_pay = evenements_pays(:one)
  end

  test "visiting the index" do
    visit evenements_pays_url
    assert_selector "h1", text: "Evenements pays"
  end

  test "should create evenements pay" do
    visit evenements_pays_url
    click_on "New evenements pay"

    fill_in "Name", with: @evenements_pay.name
    click_on "Create Evenements pay"

    assert_text "Evenements pay was successfully created"
    click_on "Back"
  end

  test "should update Evenements pay" do
    visit evenements_pay_url(@evenements_pay)
    click_on "Edit this evenements pay", match: :first

    fill_in "Name", with: @evenements_pay.name
    click_on "Update Evenements pay"

    assert_text "Evenements pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Evenements pay" do
    visit evenements_pay_url(@evenements_pay)
    click_on "Destroy this evenements pay", match: :first

    assert_text "Evenements pay was successfully destroyed"
  end
end
