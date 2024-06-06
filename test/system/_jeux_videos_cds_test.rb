require "application_system_test_case"

class JeuxVideosCdsTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_cd = _jeux_videos_cds(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_cds_url
    assert_selector "h1", text: "Jeux videos cds"
  end

  test "should create jeux videos cd" do
    visit _jeux_videos_cds_url
    click_on "New jeux videos cd"

    fill_in "Name", with: @_jeux_videos_cd.name
    click_on "Create Jeux videos cd"

    assert_text "Jeux videos cd was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos cd" do
    visit _jeux_videos_cd_url(@_jeux_videos_cd)
    click_on "Edit this jeux videos cd", match: :first

    fill_in "Name", with: @_jeux_videos_cd.name
    click_on "Update Jeux videos cd"

    assert_text "Jeux videos cd was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos cd" do
    visit _jeux_videos_cd_url(@_jeux_videos_cd)
    click_on "Destroy this jeux videos cd", match: :first

    assert_text "Jeux videos cd was successfully destroyed"
  end
end
