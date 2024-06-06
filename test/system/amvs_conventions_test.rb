require "application_system_test_case"

class AmvsConventionsTest < ApplicationSystemTestCase
  setup do
    @amvs_convention = amvs_conventions(:one)
  end

  test "visiting the index" do
    visit amvs_conventions_url
    assert_selector "h1", text: "Amvs conventions"
  end

  test "should create amvs convention" do
    visit amvs_conventions_url
    click_on "New amvs convention"

    fill_in "Name", with: @amvs_convention.name
    click_on "Create Amvs convention"

    assert_text "Amvs convention was successfully created"
    click_on "Back"
  end

  test "should update Amvs convention" do
    visit amvs_convention_url(@amvs_convention)
    click_on "Edit this amvs convention", match: :first

    fill_in "Name", with: @amvs_convention.name
    click_on "Update Amvs convention"

    assert_text "Amvs convention was successfully updated"
    click_on "Back"
  end

  test "should destroy Amvs convention" do
    visit amvs_convention_url(@amvs_convention)
    click_on "Destroy this amvs convention", match: :first

    assert_text "Amvs convention was successfully destroyed"
  end
end
