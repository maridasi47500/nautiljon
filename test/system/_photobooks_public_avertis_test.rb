require "application_system_test_case"

class PhotobooksPublicAvertisTest < ApplicationSystemTestCase
  setup do
    @_photobooks_public_averti = _photobooks_public_avertis(:one)
  end

  test "visiting the index" do
    visit _photobooks_public_avertis_url
    assert_selector "h1", text: "Photobooks public avertis"
  end

  test "should create photobooks public averti" do
    visit _photobooks_public_avertis_url
    click_on "New photobooks public averti"

    fill_in "Name", with: @_photobooks_public_averti.name
    click_on "Create Photobooks public averti"

    assert_text "Photobooks public averti was successfully created"
    click_on "Back"
  end

  test "should update Photobooks public averti" do
    visit _photobooks_public_averti_url(@_photobooks_public_averti)
    click_on "Edit this photobooks public averti", match: :first

    fill_in "Name", with: @_photobooks_public_averti.name
    click_on "Update Photobooks public averti"

    assert_text "Photobooks public averti was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks public averti" do
    visit _photobooks_public_averti_url(@_photobooks_public_averti)
    click_on "Destroy this photobooks public averti", match: :first

    assert_text "Photobooks public averti was successfully destroyed"
  end
end
