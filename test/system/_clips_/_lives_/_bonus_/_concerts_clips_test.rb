require "application_system_test_case"

class Clips::Lives::Bonus::ConcertsClipsTest < ApplicationSystemTestCase
  setup do
    @_clips___lives___bonus___concerts_clip = _clips___lives___bonus___concerts_clips(:one)
  end

  test "visiting the index" do
    visit _clips___lives___bonus___concerts_clips_url
    assert_selector "h1", text: "Concerts clips"
  end

  test "should create concerts clip" do
    visit _clips___lives___bonus___concerts_clips_url
    click_on "New concerts clip"

    fill_in "Name", with: @_clips___lives___bonus___concerts_clip.name
    click_on "Create Concerts clip"

    assert_text "Concerts clip was successfully created"
    click_on "Back"
  end

  test "should update Concerts clip" do
    visit _clips___lives___bonus___concerts_clip_url(@_clips___lives___bonus___concerts_clip)
    click_on "Edit this concerts clip", match: :first

    fill_in "Name", with: @_clips___lives___bonus___concerts_clip.name
    click_on "Update Concerts clip"

    assert_text "Concerts clip was successfully updated"
    click_on "Back"
  end

  test "should destroy Concerts clip" do
    visit _clips___lives___bonus___concerts_clip_url(@_clips___lives___bonus___concerts_clip)
    click_on "Destroy this concerts clip", match: :first

    assert_text "Concerts clip was successfully destroyed"
  end
end
