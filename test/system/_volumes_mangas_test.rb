require "application_system_test_case"

class VolumesMangasTest < ApplicationSystemTestCase
  setup do
    @_volumes_manga = _volumes_mangas(:one)
  end

  test "visiting the index" do
    visit _volumes_mangas_url
    assert_selector "h1", text: "Volumes mangas"
  end

  test "should create volumes manga" do
    visit _volumes_mangas_url
    click_on "New volumes manga"

    fill_in "Name", with: @_volumes_manga.name
    click_on "Create Volumes manga"

    assert_text "Volumes manga was successfully created"
    click_on "Back"
  end

  test "should update Volumes manga" do
    visit _volumes_manga_url(@_volumes_manga)
    click_on "Edit this volumes manga", match: :first

    fill_in "Name", with: @_volumes_manga.name
    click_on "Update Volumes manga"

    assert_text "Volumes manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Volumes manga" do
    visit _volumes_manga_url(@_volumes_manga)
    click_on "Destroy this volumes manga", match: :first

    assert_text "Volumes manga was successfully destroyed"
  end
end
