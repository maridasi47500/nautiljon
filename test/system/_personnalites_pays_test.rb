require "application_system_test_case"

class PersonnalitesPaysTest < ApplicationSystemTestCase
  setup do
    @_personnalites_pay = _personnalites_pays(:one)
  end

  test "visiting the index" do
    visit _personnalites_pays_url
    assert_selector "h1", text: "Personnalites pays"
  end

  test "should create personnalites pay" do
    visit _personnalites_pays_url
    click_on "New personnalites pay"

    fill_in "Name", with: @_personnalites_pay.name
    click_on "Create Personnalites pay"

    assert_text "Personnalites pay was successfully created"
    click_on "Back"
  end

  test "should update Personnalites pay" do
    visit _personnalites_pay_url(@_personnalites_pay)
    click_on "Edit this personnalites pay", match: :first

    fill_in "Name", with: @_personnalites_pay.name
    click_on "Update Personnalites pay"

    assert_text "Personnalites pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites pay" do
    visit _personnalites_pay_url(@_personnalites_pay)
    click_on "Destroy this personnalites pay", match: :first

    assert_text "Personnalites pay was successfully destroyed"
  end
end
