require "application_system_test_case"

class DramasGeneriquesClipsTest < ApplicationSystemTestCase
  setup do
    @_dramas_generiques_clip = _dramas_generiques_clips(:one)
  end

  test "visiting the index" do
    visit _dramas_generiques_clips_url
    assert_selector "h1", text: "Dramas generiques clips"
  end

  test "should create dramas generiques clip" do
    visit _dramas_generiques_clips_url
    click_on "New dramas generiques clip"

    fill_in "Name", with: @_dramas_generiques_clip.name
    click_on "Create Dramas generiques clip"

    assert_text "Dramas generiques clip was successfully created"
    click_on "Back"
  end

  test "should update Dramas generiques clip" do
    visit _dramas_generiques_clip_url(@_dramas_generiques_clip)
    click_on "Edit this dramas generiques clip", match: :first

    fill_in "Name", with: @_dramas_generiques_clip.name
    click_on "Update Dramas generiques clip"

    assert_text "Dramas generiques clip was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas generiques clip" do
    visit _dramas_generiques_clip_url(@_dramas_generiques_clip)
    click_on "Destroy this dramas generiques clip", match: :first

    assert_text "Dramas generiques clip was successfully destroyed"
  end
end
