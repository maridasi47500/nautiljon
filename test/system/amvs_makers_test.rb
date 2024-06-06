require "application_system_test_case"

class AmvsMakersTest < ApplicationSystemTestCase
  setup do
    @amvs_maker = amvs_makers(:one)
  end

  test "visiting the index" do
    visit amvs_makers_url
    assert_selector "h1", text: "Amvs makers"
  end

  test "should create amvs maker" do
    visit amvs_makers_url
    click_on "New amvs maker"

    fill_in "Name", with: @amvs_maker.name
    click_on "Create Amvs maker"

    assert_text "Amvs maker was successfully created"
    click_on "Back"
  end

  test "should update Amvs maker" do
    visit amvs_maker_url(@amvs_maker)
    click_on "Edit this amvs maker", match: :first

    fill_in "Name", with: @amvs_maker.name
    click_on "Update Amvs maker"

    assert_text "Amvs maker was successfully updated"
    click_on "Back"
  end

  test "should destroy Amvs maker" do
    visit amvs_maker_url(@amvs_maker)
    click_on "Destroy this amvs maker", match: :first

    assert_text "Amvs maker was successfully destroyed"
  end
end
