require "application_system_test_case"

class BrevesCdsTest < ApplicationSystemTestCase
  setup do
    @_breves_cd = _breves_cds(:one)
  end

  test "visiting the index" do
    visit _breves_cds_url
    assert_selector "h1", text: "Breves cds"
  end

  test "should create breves cd" do
    visit _breves_cds_url
    click_on "New breves cd"

    fill_in "Name", with: @_breves_cd.name
    click_on "Create Breves cd"

    assert_text "Breves cd was successfully created"
    click_on "Back"
  end

  test "should update Breves cd" do
    visit _breves_cd_url(@_breves_cd)
    click_on "Edit this breves cd", match: :first

    fill_in "Name", with: @_breves_cd.name
    click_on "Update Breves cd"

    assert_text "Breves cd was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves cd" do
    visit _breves_cd_url(@_breves_cd)
    click_on "Destroy this breves cd", match: :first

    assert_text "Breves cd was successfully destroyed"
  end
end
