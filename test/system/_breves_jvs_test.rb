require "application_system_test_case"

class BrevesJvsTest < ApplicationSystemTestCase
  setup do
    @_breves_jv = _breves_jvs(:one)
  end

  test "visiting the index" do
    visit _breves_jvs_url
    assert_selector "h1", text: "Breves jvs"
  end

  test "should create breves jv" do
    visit _breves_jvs_url
    click_on "New breves jv"

    fill_in "Name", with: @_breves_jv.name
    click_on "Create Breves jv"

    assert_text "Breves jv was successfully created"
    click_on "Back"
  end

  test "should update Breves jv" do
    visit _breves_jv_url(@_breves_jv)
    click_on "Edit this breves jv", match: :first

    fill_in "Name", with: @_breves_jv.name
    click_on "Update Breves jv"

    assert_text "Breves jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves jv" do
    visit _breves_jv_url(@_breves_jv)
    click_on "Destroy this breves jv", match: :first

    assert_text "Breves jv was successfully destroyed"
  end
end
