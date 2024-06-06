require "application_system_test_case"

class AmvsGroupesTest < ApplicationSystemTestCase
  setup do
    @amvs_groupe = amvs_groupes(:one)
  end

  test "visiting the index" do
    visit amvs_groupes_url
    assert_selector "h1", text: "Amvs groupes"
  end

  test "should create amvs groupe" do
    visit amvs_groupes_url
    click_on "New amvs groupe"

    fill_in "Name", with: @amvs_groupe.name
    click_on "Create Amvs groupe"

    assert_text "Amvs groupe was successfully created"
    click_on "Back"
  end

  test "should update Amvs groupe" do
    visit amvs_groupe_url(@amvs_groupe)
    click_on "Edit this amvs groupe", match: :first

    fill_in "Name", with: @amvs_groupe.name
    click_on "Update Amvs groupe"

    assert_text "Amvs groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Amvs groupe" do
    visit amvs_groupe_url(@amvs_groupe)
    click_on "Destroy this amvs groupe", match: :first

    assert_text "Amvs groupe was successfully destroyed"
  end
end
