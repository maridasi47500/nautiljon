require "application_system_test_case"

class FilmsAsiatiquesGeneriquesClipsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_generiques_clip = _films_asiatiques_generiques_clips(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_generiques_clips_url
    assert_selector "h1", text: "Films asiatiques generiques clips"
  end

  test "should create films asiatiques generiques clip" do
    visit _films_asiatiques_generiques_clips_url
    click_on "New films asiatiques generiques clip"

    fill_in "Name", with: @_films_asiatiques_generiques_clip.name
    click_on "Create Films asiatiques generiques clip"

    assert_text "Films asiatiques generiques clip was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques generiques clip" do
    visit _films_asiatiques_generiques_clip_url(@_films_asiatiques_generiques_clip)
    click_on "Edit this films asiatiques generiques clip", match: :first

    fill_in "Name", with: @_films_asiatiques_generiques_clip.name
    click_on "Update Films asiatiques generiques clip"

    assert_text "Films asiatiques generiques clip was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques generiques clip" do
    visit _films_asiatiques_generiques_clip_url(@_films_asiatiques_generiques_clip)
    click_on "Destroy this films asiatiques generiques clip", match: :first

    assert_text "Films asiatiques generiques clip was successfully destroyed"
  end
end
