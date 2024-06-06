require "application_system_test_case"

class CdsGroupesTest < ApplicationSystemTestCase
  setup do
    @_cds_groupe = _cds_groupes(:one)
  end

  test "visiting the index" do
    visit _cds_groupes_url
    assert_selector "h1", text: "Cds groupes"
  end

  test "should create cds groupe" do
    visit _cds_groupes_url
    click_on "New cds groupe"

    fill_in "Name", with: @_cds_groupe.name
    click_on "Create Cds groupe"

    assert_text "Cds groupe was successfully created"
    click_on "Back"
  end

  test "should update Cds groupe" do
    visit _cds_groupe_url(@_cds_groupe)
    click_on "Edit this cds groupe", match: :first

    fill_in "Name", with: @_cds_groupe.name
    click_on "Update Cds groupe"

    assert_text "Cds groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds groupe" do
    visit _cds_groupe_url(@_cds_groupe)
    click_on "Destroy this cds groupe", match: :first

    assert_text "Cds groupe was successfully destroyed"
  end
end
