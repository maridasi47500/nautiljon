require "application_system_test_case"

class SitesDachatsTest < ApplicationSystemTestCase
  setup do
    @_sites_dachat = _sites_dachats(:one)
  end

  test "visiting the index" do
    visit _sites_dachats_url
    assert_selector "h1", text: "Sites dachats"
  end

  test "should create sites dachat" do
    visit _sites_dachats_url
    click_on "New sites dachat"

    fill_in "Sites dachats pays", with: @_sites_dachat._sites_dachats_pays_id
    fill_in "Acceptregles", with: @_sites_dachat.acceptregles
    fill_in "Description", with: @_sites_dachat.description
    fill_in "Nom", with: @_sites_dachat.nom
    fill_in "Url", with: @_sites_dachat.url
    click_on "Create Sites dachat"

    assert_text "Sites dachat was successfully created"
    click_on "Back"
  end

  test "should update Sites dachat" do
    visit _sites_dachat_url(@_sites_dachat)
    click_on "Edit this sites dachat", match: :first

    fill_in "Sites dachats pays", with: @_sites_dachat._sites_dachats_pays_id
    fill_in "Acceptregles", with: @_sites_dachat.acceptregles
    fill_in "Description", with: @_sites_dachat.description
    fill_in "Nom", with: @_sites_dachat.nom
    fill_in "Url", with: @_sites_dachat.url
    click_on "Update Sites dachat"

    assert_text "Sites dachat was successfully updated"
    click_on "Back"
  end

  test "should destroy Sites dachat" do
    visit _sites_dachat_url(@_sites_dachat)
    click_on "Destroy this sites dachat", match: :first

    assert_text "Sites dachat was successfully destroyed"
  end
end
