require "application_system_test_case"

class VolumesLnsTest < ApplicationSystemTestCase
  setup do
    @_volumes_ln = _volumes_lns(:one)
  end

  test "visiting the index" do
    visit _volumes_lns_url
    assert_selector "h1", text: "Volumes lns"
  end

  test "should create volumes ln" do
    visit _volumes_lns_url
    click_on "New volumes ln"

    fill_in "Name", with: @_volumes_ln.name
    click_on "Create Volumes ln"

    assert_text "Volumes ln was successfully created"
    click_on "Back"
  end

  test "should update Volumes ln" do
    visit _volumes_ln_url(@_volumes_ln)
    click_on "Edit this volumes ln", match: :first

    fill_in "Name", with: @_volumes_ln.name
    click_on "Update Volumes ln"

    assert_text "Volumes ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Volumes ln" do
    visit _volumes_ln_url(@_volumes_ln)
    click_on "Destroy this volumes ln", match: :first

    assert_text "Volumes ln was successfully destroyed"
  end
end
