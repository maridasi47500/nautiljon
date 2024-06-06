require "application_system_test_case"

class BrevesAmvsTest < ApplicationSystemTestCase
  setup do
    @_breves_amv = _breves_amvs(:one)
  end

  test "visiting the index" do
    visit _breves_amvs_url
    assert_selector "h1", text: "Breves amvs"
  end

  test "should create breves amv" do
    visit _breves_amvs_url
    click_on "New breves amv"

    fill_in "Name", with: @_breves_amv.name
    click_on "Create Breves amv"

    assert_text "Breves amv was successfully created"
    click_on "Back"
  end

  test "should update Breves amv" do
    visit _breves_amv_url(@_breves_amv)
    click_on "Edit this breves amv", match: :first

    fill_in "Name", with: @_breves_amv.name
    click_on "Update Breves amv"

    assert_text "Breves amv was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves amv" do
    visit _breves_amv_url(@_breves_amv)
    click_on "Destroy this breves amv", match: :first

    assert_text "Breves amv was successfully destroyed"
  end
end
