require "application_system_test_case"

class ArtbooksJvsTest < ApplicationSystemTestCase
  setup do
    @artbooks_jv = artbooks_jvs(:one)
  end

  test "visiting the index" do
    visit artbooks_jvs_url
    assert_selector "h1", text: "Artbooks jvs"
  end

  test "should create artbooks jv" do
    visit artbooks_jvs_url
    click_on "New artbooks jv"

    fill_in "Name", with: @artbooks_jv.name
    click_on "Create Artbooks jv"

    assert_text "Artbooks jv was successfully created"
    click_on "Back"
  end

  test "should update Artbooks jv" do
    visit artbooks_jv_url(@artbooks_jv)
    click_on "Edit this artbooks jv", match: :first

    fill_in "Name", with: @artbooks_jv.name
    click_on "Update Artbooks jv"

    assert_text "Artbooks jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks jv" do
    visit artbooks_jv_url(@artbooks_jv)
    click_on "Destroy this artbooks jv", match: :first

    assert_text "Artbooks jv was successfully destroyed"
  end
end
