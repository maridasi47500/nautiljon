require "application_system_test_case"

class ArtbooksLnsTest < ApplicationSystemTestCase
  setup do
    @artbooks_ln = artbooks_lns(:one)
  end

  test "visiting the index" do
    visit artbooks_lns_url
    assert_selector "h1", text: "Artbooks lns"
  end

  test "should create artbooks ln" do
    visit artbooks_lns_url
    click_on "New artbooks ln"

    fill_in "Name", with: @artbooks_ln.name
    click_on "Create Artbooks ln"

    assert_text "Artbooks ln was successfully created"
    click_on "Back"
  end

  test "should update Artbooks ln" do
    visit artbooks_ln_url(@artbooks_ln)
    click_on "Edit this artbooks ln", match: :first

    fill_in "Name", with: @artbooks_ln.name
    click_on "Update Artbooks ln"

    assert_text "Artbooks ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks ln" do
    visit artbooks_ln_url(@artbooks_ln)
    click_on "Destroy this artbooks ln", match: :first

    assert_text "Artbooks ln was successfully destroyed"
  end
end
