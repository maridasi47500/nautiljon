require "application_system_test_case"

class OstsLnsTest < ApplicationSystemTestCase
  setup do
    @osts_ln = osts_lns(:one)
  end

  test "visiting the index" do
    visit osts_lns_url
    assert_selector "h1", text: "Osts lns"
  end

  test "should create osts ln" do
    visit osts_lns_url
    click_on "New osts ln"

    fill_in "Name", with: @osts_ln.name
    click_on "Create Osts ln"

    assert_text "Osts ln was successfully created"
    click_on "Back"
  end

  test "should update Osts ln" do
    visit osts_ln_url(@osts_ln)
    click_on "Edit this osts ln", match: :first

    fill_in "Name", with: @osts_ln.name
    click_on "Update Osts ln"

    assert_text "Osts ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts ln" do
    visit osts_ln_url(@osts_ln)
    click_on "Destroy this osts ln", match: :first

    assert_text "Osts ln was successfully destroyed"
  end
end
