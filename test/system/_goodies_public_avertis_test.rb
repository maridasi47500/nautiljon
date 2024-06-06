require "application_system_test_case"

class GoodiesPublicAvertisTest < ApplicationSystemTestCase
  setup do
    @_goodies_public_averti = _goodies_public_avertis(:one)
  end

  test "visiting the index" do
    visit _goodies_public_avertis_url
    assert_selector "h1", text: "Goodies public avertis"
  end

  test "should create goodies public averti" do
    visit _goodies_public_avertis_url
    click_on "New goodies public averti"

    fill_in "Name", with: @_goodies_public_averti.name
    click_on "Create Goodies public averti"

    assert_text "Goodies public averti was successfully created"
    click_on "Back"
  end

  test "should update Goodies public averti" do
    visit _goodies_public_averti_url(@_goodies_public_averti)
    click_on "Edit this goodies public averti", match: :first

    fill_in "Name", with: @_goodies_public_averti.name
    click_on "Update Goodies public averti"

    assert_text "Goodies public averti was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies public averti" do
    visit _goodies_public_averti_url(@_goodies_public_averti)
    click_on "Destroy this goodies public averti", match: :first

    assert_text "Goodies public averti was successfully destroyed"
  end
end
