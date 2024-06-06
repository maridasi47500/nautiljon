require "application_system_test_case"

class SitesDachatsPaysTest < ApplicationSystemTestCase
  setup do
    @_sites_dachats_pay = _sites_dachats_pays(:one)
  end

  test "visiting the index" do
    visit _sites_dachats_pays_url
    assert_selector "h1", text: "Sites dachats pays"
  end

  test "should create sites dachats pay" do
    visit _sites_dachats_pays_url
    click_on "New sites dachats pay"

    fill_in "Name", with: @_sites_dachats_pay.name
    click_on "Create Sites dachats pay"

    assert_text "Sites dachats pay was successfully created"
    click_on "Back"
  end

  test "should update Sites dachats pay" do
    visit _sites_dachats_pay_url(@_sites_dachats_pay)
    click_on "Edit this sites dachats pay", match: :first

    fill_in "Name", with: @_sites_dachats_pay.name
    click_on "Update Sites dachats pay"

    assert_text "Sites dachats pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Sites dachats pay" do
    visit _sites_dachats_pay_url(@_sites_dachats_pay)
    click_on "Destroy this sites dachats pay", match: :first

    assert_text "Sites dachats pay was successfully destroyed"
  end
end
