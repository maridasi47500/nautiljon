require "application_system_test_case"

class DoujinshisPaysTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_pay = _doujinshis_pays(:one)
  end

  test "visiting the index" do
    visit _doujinshis_pays_url
    assert_selector "h1", text: "Doujinshis pays"
  end

  test "should create doujinshis pay" do
    visit _doujinshis_pays_url
    click_on "New doujinshis pay"

    fill_in "Name", with: @_doujinshis_pay.name
    click_on "Create Doujinshis pay"

    assert_text "Doujinshis pay was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis pay" do
    visit _doujinshis_pay_url(@_doujinshis_pay)
    click_on "Edit this doujinshis pay", match: :first

    fill_in "Name", with: @_doujinshis_pay.name
    click_on "Update Doujinshis pay"

    assert_text "Doujinshis pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis pay" do
    visit _doujinshis_pay_url(@_doujinshis_pay)
    click_on "Destroy this doujinshis pay", match: :first

    assert_text "Doujinshis pay was successfully destroyed"
  end
end
