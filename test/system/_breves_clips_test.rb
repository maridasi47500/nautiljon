require "application_system_test_case"

class BrevesClipsTest < ApplicationSystemTestCase
  setup do
    @_breves_clip = _breves_clips(:one)
  end

  test "visiting the index" do
    visit _breves_clips_url
    assert_selector "h1", text: "Breves clips"
  end

  test "should create breves clip" do
    visit _breves_clips_url
    click_on "New breves clip"

    fill_in "Name", with: @_breves_clip.name
    click_on "Create Breves clip"

    assert_text "Breves clip was successfully created"
    click_on "Back"
  end

  test "should update Breves clip" do
    visit _breves_clip_url(@_breves_clip)
    click_on "Edit this breves clip", match: :first

    fill_in "Name", with: @_breves_clip.name
    click_on "Update Breves clip"

    assert_text "Breves clip was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves clip" do
    visit _breves_clip_url(@_breves_clip)
    click_on "Destroy this breves clip", match: :first

    assert_text "Breves clip was successfully destroyed"
  end
end
