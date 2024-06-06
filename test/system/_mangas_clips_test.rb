require "application_system_test_case"

class MangasClipsTest < ApplicationSystemTestCase
  setup do
    @_mangas_clip = _mangas_clips(:one)
  end

  test "visiting the index" do
    visit _mangas_clips_url
    assert_selector "h1", text: "Mangas clips"
  end

  test "should create mangas clip" do
    visit _mangas_clips_url
    click_on "New mangas clip"

    fill_in "Name", with: @_mangas_clip.name
    click_on "Create Mangas clip"

    assert_text "Mangas clip was successfully created"
    click_on "Back"
  end

  test "should update Mangas clip" do
    visit _mangas_clip_url(@_mangas_clip)
    click_on "Edit this mangas clip", match: :first

    fill_in "Name", with: @_mangas_clip.name
    click_on "Update Mangas clip"

    assert_text "Mangas clip was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas clip" do
    visit _mangas_clip_url(@_mangas_clip)
    click_on "Destroy this mangas clip", match: :first

    assert_text "Mangas clip was successfully destroyed"
  end
end
