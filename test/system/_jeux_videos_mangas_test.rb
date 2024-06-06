require "application_system_test_case"

class JeuxVideosMangasTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_manga = _jeux_videos_mangas(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_mangas_url
    assert_selector "h1", text: "Jeux videos mangas"
  end

  test "should create jeux videos manga" do
    visit _jeux_videos_mangas_url
    click_on "New jeux videos manga"

    fill_in "Name", with: @_jeux_videos_manga.name
    click_on "Create Jeux videos manga"

    assert_text "Jeux videos manga was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos manga" do
    visit _jeux_videos_manga_url(@_jeux_videos_manga)
    click_on "Edit this jeux videos manga", match: :first

    fill_in "Name", with: @_jeux_videos_manga.name
    click_on "Update Jeux videos manga"

    assert_text "Jeux videos manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos manga" do
    visit _jeux_videos_manga_url(@_jeux_videos_manga)
    click_on "Destroy this jeux videos manga", match: :first

    assert_text "Jeux videos manga was successfully destroyed"
  end
end
