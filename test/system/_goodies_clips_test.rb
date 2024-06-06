require "application_system_test_case"

class GoodiesClipsTest < ApplicationSystemTestCase
  setup do
    @_goodies_clip = _goodies_clips(:one)
  end

  test "visiting the index" do
    visit _goodies_clips_url
    assert_selector "h1", text: "Goodies clips"
  end

  test "should create goodies clip" do
    visit _goodies_clips_url
    click_on "New goodies clip"

    fill_in "Name", with: @_goodies_clip.name
    click_on "Create Goodies clip"

    assert_text "Goodies clip was successfully created"
    click_on "Back"
  end

  test "should update Goodies clip" do
    visit _goodies_clip_url(@_goodies_clip)
    click_on "Edit this goodies clip", match: :first

    fill_in "Name", with: @_goodies_clip.name
    click_on "Update Goodies clip"

    assert_text "Goodies clip was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies clip" do
    visit _goodies_clip_url(@_goodies_clip)
    click_on "Destroy this goodies clip", match: :first

    assert_text "Goodies clip was successfully destroyed"
  end
end
