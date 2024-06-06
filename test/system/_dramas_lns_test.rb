require "application_system_test_case"

class DramasLnsTest < ApplicationSystemTestCase
  setup do
    @_dramas_ln = _dramas_lns(:one)
  end

  test "visiting the index" do
    visit _dramas_lns_url
    assert_selector "h1", text: "Dramas lns"
  end

  test "should create dramas ln" do
    visit _dramas_lns_url
    click_on "New dramas ln"

    fill_in "Name", with: @_dramas_ln.name
    click_on "Create Dramas ln"

    assert_text "Dramas ln was successfully created"
    click_on "Back"
  end

  test "should update Dramas ln" do
    visit _dramas_ln_url(@_dramas_ln)
    click_on "Edit this dramas ln", match: :first

    fill_in "Name", with: @_dramas_ln.name
    click_on "Update Dramas ln"

    assert_text "Dramas ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas ln" do
    visit _dramas_ln_url(@_dramas_ln)
    click_on "Destroy this dramas ln", match: :first

    assert_text "Dramas ln was successfully destroyed"
  end
end
