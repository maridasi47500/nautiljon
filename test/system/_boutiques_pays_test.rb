require "application_system_test_case"

class BoutiquesPaysTest < ApplicationSystemTestCase
  setup do
    @_boutiques_pay = _boutiques_pays(:one)
  end

  test "visiting the index" do
    visit _boutiques_pays_url
    assert_selector "h1", text: "Boutiques pays"
  end

  test "should create boutiques pay" do
    visit _boutiques_pays_url
    click_on "New boutiques pay"

    fill_in "Name", with: @_boutiques_pay.name
    click_on "Create Boutiques pay"

    assert_text "Boutiques pay was successfully created"
    click_on "Back"
  end

  test "should update Boutiques pay" do
    visit _boutiques_pay_url(@_boutiques_pay)
    click_on "Edit this boutiques pay", match: :first

    fill_in "Name", with: @_boutiques_pay.name
    click_on "Update Boutiques pay"

    assert_text "Boutiques pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Boutiques pay" do
    visit _boutiques_pay_url(@_boutiques_pay)
    click_on "Destroy this boutiques pay", match: :first

    assert_text "Boutiques pay was successfully destroyed"
  end
end
