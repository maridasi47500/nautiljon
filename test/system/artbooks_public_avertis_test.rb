require "application_system_test_case"

class ArtbooksPublicAvertisTest < ApplicationSystemTestCase
  setup do
    @artbooks_public_averti = artbooks_public_avertis(:one)
  end

  test "visiting the index" do
    visit artbooks_public_avertis_url
    assert_selector "h1", text: "Artbooks public avertis"
  end

  test "should create artbooks public averti" do
    visit artbooks_public_avertis_url
    click_on "New artbooks public averti"

    fill_in "Name", with: @artbooks_public_averti.name
    click_on "Create Artbooks public averti"

    assert_text "Artbooks public averti was successfully created"
    click_on "Back"
  end

  test "should update Artbooks public averti" do
    visit artbooks_public_averti_url(@artbooks_public_averti)
    click_on "Edit this artbooks public averti", match: :first

    fill_in "Name", with: @artbooks_public_averti.name
    click_on "Update Artbooks public averti"

    assert_text "Artbooks public averti was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks public averti" do
    visit artbooks_public_averti_url(@artbooks_public_averti)
    click_on "Destroy this artbooks public averti", match: :first

    assert_text "Artbooks public averti was successfully destroyed"
  end
end
