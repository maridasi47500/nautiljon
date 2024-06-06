require "application_system_test_case"

class PhotobooksPaysTest < ApplicationSystemTestCase
  setup do
    @_photobooks_pay = _photobooks_pays(:one)
  end

  test "visiting the index" do
    visit _photobooks_pays_url
    assert_selector "h1", text: "Photobooks pays"
  end

  test "should create photobooks pay" do
    visit _photobooks_pays_url
    click_on "New photobooks pay"

    fill_in "Name", with: @_photobooks_pay.name
    click_on "Create Photobooks pay"

    assert_text "Photobooks pay was successfully created"
    click_on "Back"
  end

  test "should update Photobooks pay" do
    visit _photobooks_pay_url(@_photobooks_pay)
    click_on "Edit this photobooks pay", match: :first

    fill_in "Name", with: @_photobooks_pay.name
    click_on "Update Photobooks pay"

    assert_text "Photobooks pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks pay" do
    visit _photobooks_pay_url(@_photobooks_pay)
    click_on "Destroy this photobooks pay", match: :first

    assert_text "Photobooks pay was successfully destroyed"
  end
end
