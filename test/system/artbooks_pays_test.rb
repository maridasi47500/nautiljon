require "application_system_test_case"

class ArtbooksPaysTest < ApplicationSystemTestCase
  setup do
    @artbooks_pay = artbooks_pays(:one)
  end

  test "visiting the index" do
    visit artbooks_pays_url
    assert_selector "h1", text: "Artbooks pays"
  end

  test "should create artbooks pay" do
    visit artbooks_pays_url
    click_on "New artbooks pay"

    fill_in "Name", with: @artbooks_pay.name
    click_on "Create Artbooks pay"

    assert_text "Artbooks pay was successfully created"
    click_on "Back"
  end

  test "should update Artbooks pay" do
    visit artbooks_pay_url(@artbooks_pay)
    click_on "Edit this artbooks pay", match: :first

    fill_in "Name", with: @artbooks_pay.name
    click_on "Update Artbooks pay"

    assert_text "Artbooks pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks pay" do
    visit artbooks_pay_url(@artbooks_pay)
    click_on "Destroy this artbooks pay", match: :first

    assert_text "Artbooks pay was successfully destroyed"
  end
end
